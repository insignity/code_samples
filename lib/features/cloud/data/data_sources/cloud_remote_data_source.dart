import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:erp_ipad/core/exception.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/failure.dart';
import '../../../../core/services/api/api.dart';
import '../../../../core/services/session/session_service.dart';
import '../../../../core/utils/configuration.dart';
import '../../domain/entities/cloud_entities.dart';

abstract class CloudRemoteDataSource {
  Future<Either<Failure, LoginEntity>> login({
    required String cloud,
    required String email,
    required String password,
  });

  Future<Either<Failure, bool>> check(String cloud);
}

@LazySingleton(as: CloudRemoteDataSource)
class CloudRemoteDataSourceImpl implements CloudRemoteDataSource {
  final Api client;
  final SessionService sessionService;

  CloudRemoteDataSourceImpl(this.client, this.sessionService);

  @override
  Future<Either<Failure, LoginEntity>> login({
    required String cloud,
    required String email,
    required String password,
  }) async {
    try {
      final login = await client.login(
        cloud: cloud,
        body: {"email": email, "password": password},
      ).catchError((Object object) {
        switch (object.runtimeType) {
          case DioError:
            final res = (object as DioError).response;
            logger.e("Got error : ${res?.statusCode} -> ${res?.statusMessage}");
            break;
          default:
            break;
        }
      });
      return Right(login);
    } on InvalidPasswordException {
      return Left(InvalidPasswordFailure());
    } catch (e) {
      return Left(NotImplementedFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, bool>> check(String cloud) async {
    try {
      await client.checkCloud(cloud: cloud);
      return const Right(true);
    } catch (e) {
      return Left(NotImplementedFailure(e.toString()));
    }
  }
}
