part of 'entities.dart';

@freezed
class CloudToken with _$CloudToken {
  const factory CloudToken({required String text}) = _CloudToken;

  factory CloudToken.fromJson(Json json) => _$CloudTokenFromJson(json);
}
