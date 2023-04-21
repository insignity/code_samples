part of 'cloud_bloc.dart';

@freezed
class CloudEvent with _$CloudEvent {
  const factory CloudEvent.fetch() = _Fetch;

  const factory CloudEvent.setCloudName([String? name]) = _SetCloudName;

  const factory CloudEvent.checkCloud() = _CheckCloud;

  const factory CloudEvent.setLogin([String? login]) = _SetLogin;

  const factory CloudEvent.setPassword([String? password]) = _SetPassword;

  const factory CloudEvent.login() = _Login;

  const factory CloudEvent.savePoint(PointDescriptionEntity point) = _SavePoint;
}
