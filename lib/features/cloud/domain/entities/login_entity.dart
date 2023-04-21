part of 'cloud_entities.dart';

@freezed
class LoginEntity with _$LoginEntity {
  const factory LoginEntity({
    required LoginResultEntity result,
    required List<PointDescriptionEntity> points,
  }) = _LoginEntity;

  factory LoginEntity.fromJson(Json json) => _$LoginEntityFromJson(json);
}
