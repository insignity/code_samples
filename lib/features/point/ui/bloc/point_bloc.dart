import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/failure.dart';
import '../../../../entities/entities.dart';

part 'point_bloc.freezed.dart';
part 'point_event.dart';
part 'point_state.dart';

@lazySingleton
class PointBloc extends Bloc<PointEvent, PointState> {
  final UserService userService;

  PointBloc(this.userService) : super(const _Initial()) {
    on<PointEvent>((event, emit) async {
      await event.when(
        setHallIndex: (int index) {
          if (state is _Loaded) {
            emit((state as _Loaded).copyWith(activeHallIndex: index));
          }
        },
        setPointEntity: (PointEntity point) async {
          emit(_Loaded(point: point));
        },
      );
    });
  }
}
