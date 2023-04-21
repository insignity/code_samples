part of 'entities.dart';

@freezed
class PointToken with _$PointToken {
  const factory PointToken({required String text}) = _PointToken;

  factory PointToken.fromJson(Json json) => _$PointTokenFromJson(json);
}
