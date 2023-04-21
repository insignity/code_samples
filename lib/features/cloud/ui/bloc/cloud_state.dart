part of 'cloud_bloc.dart';

@freezed
class CloudState with _$CloudState {
  const factory CloudState.initial() = _Initial;

  const factory CloudState.loading() = _Loading;

  const factory CloudState.error(Failure failure) = _Error;

  const factory CloudState.nameLoaded([String? name]) = _NameLoaded;

  const factory CloudState.loginLoaded({
    String? login,
    String? password,
  }) = _LoginLoaded;

  const factory CloudState.pointsLoaded(List<PointDescriptionEntity> points) =
      _PointsLoaded;

  const factory CloudState.pointLoaded(PointDescriptionEntity point) =
      _PointLoaded;
}
