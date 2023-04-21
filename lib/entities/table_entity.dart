part of 'entities.dart';

@freezed
class TableEntity with _$TableEntity {
  const factory TableEntity({
    required int id,
    required String name,
    required TableType type,
    required int height,
    required int width,
    required int angle,
    required GraphPointEntity point,
    @Default([]) List<OrderEntity> orders,
  }) = _TableEntity;

  factory TableEntity.fromJson(Json json) => _$TableEntityFromJson(json);
}

enum TableType { rectangle, circle }

@freezed
class GraphPointEntity with _$GraphPointEntity {
  const factory GraphPointEntity({
    required int x,
    required int y,
  }) = _GraphPointEntity;

  factory GraphPointEntity.fromJson(Map<String, dynamic> json) =>
      _$GraphPointEntityFromJson(json);
}
