part of 'cloud_entities.dart';

@freezed
class LoginResultEntity with _$LoginResultEntity {
  const factory LoginResultEntity({
    @JsonKey(name: 'access_token') required String accessToken,
    @JsonKey(name: 'token_type') required String tokenType,
  }) = _ResultEntity;

  factory LoginResultEntity.fromJson(Json json) =>
      _$LoginResultEntityFromJson(json);
}
