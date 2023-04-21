part of 'point_bloc.dart';

@freezed
class PointState with _$PointState {
  const factory PointState.initial() = _Initial;

  const factory PointState.loading() = _Loading;

  const factory PointState.error(Failure failure) = _Error;

  const factory PointState.loaded({
    required PointEntity point,
    @Default(0) int activeHallIndex,
  }) = _Loaded;
}
