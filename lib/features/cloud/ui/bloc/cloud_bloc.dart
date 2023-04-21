import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:erp_ipad/core/failure.dart';
import 'package:erp_ipad/entities/entities.dart';
import 'package:erp_ipad/features/cloud/domain/use_cases/cloud_check.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/services/session/session_service.dart';
import '../../domain/entities/cloud_entities.dart';
import '../../domain/use_cases/cloud_get_point.dart';
import '../../domain/use_cases/cloud_login.dart';
import '../../domain/use_cases/cloud_save_point.dart';

part 'cloud_bloc.freezed.dart';
part 'cloud_event.dart';
part 'cloud_state.dart';

@injectable
class CloudBloc extends Bloc<CloudEvent, CloudState> {
  final CloudLogin login;
  final CloudCheck check;
  final SessionService sessionService;
  final CloudGetPoint getPoint;
  final CloudSavePoint savePoint;

  CloudBloc(
    this.login,
    this.check,
    this.sessionService,
    this.getPoint,
    this.savePoint,
  ) : super(const CloudState.initial()) {
    on<CloudEvent>((event, emit) async {
      await event.when(
        fetch: () async {
          final futures = await Future.wait([
            sessionService.getCloudName(),
            sessionService.getCloudToken(),
            getPoint(),
          ]);
          final hasCloudName = futures[0] != null;
          final hasCloudToken = futures[1] != null;
          final points = futures[2] as Either<Failure, PointDescriptionEntity>;
          if (!hasCloudName) {
            emit(const _NameLoaded());
          } else if (!hasCloudToken) {
            emit(const _LoginLoaded());
          } else if (points.isRight()) {
            emit(points.fold(
              (l) => const _LoginLoaded(),
              (r) => _PointLoaded(r),
            ));
          } else {
            emit(const _LoginLoaded());
          }
        },
        setCloudName: (cloud) {
          emit(_NameLoaded(cloud));
        },
        checkCloud: () async {
          if (state is _NameLoaded && (state as _NameLoaded).name != null) {
            final String cloud = (state as _NameLoaded).name!;
            emit(const _Loading());
            try {
              final response = await check(cloud);
              await response.fold(
                (failure) {
                  emit(_Error(failure));
                },
                (r) async {
                  await sessionService.setCloudName(cloud);
                  emit(const _LoginLoaded());
                },
              );
            } catch (e) {
              emit(_Error(NotImplementedFailure(e.toString())));
            }
          }
        },
        setLogin: (String? login) {
          emit((state as _LoginLoaded).copyWith(login: login));
        },
        setPassword: (String? password) {
          emit((state as _LoginLoaded).copyWith(password: password));
        },
        login: () async {
          if (state is _LoginLoaded) {
            try {
              final oldState = state as _LoginLoaded;
              emit(const _Loading());
              final cloudName = await sessionService.getCloudName();
              if (cloudName != null &&
                  oldState.password != null &&
                  oldState.login != null) {
                final result = await login(
                  CloudLoginParams(
                    cloud: cloudName,
                    password: oldState.password!,
                    email: oldState.login!,
                  ),
                );
                final CloudState emitable = await result.fold(
                  (failure) {
                    return Future.value(_Error(failure));
                  },
                  (success) async {
                    await sessionService.setCloudToken(
                      CloudToken(
                        text: success.result.accessToken,
                      ),
                    );
                    return _PointsLoaded(success.points);
                  },
                );
                emit(emitable);
              } else {
                throw UnimplementedError("null pointer");
              }
            } catch (e) {
              emit(_Error(NotImplementedFailure(e.toString())));
            }
          }
        },
        savePoint: (pointDescription) {
          savePoint(pointDescription);
        },
      );
    });
  }
}
