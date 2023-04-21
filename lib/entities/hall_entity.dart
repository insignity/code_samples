part of 'entities.dart';

@freezed
class HallEntity with _$HallEntity {
  const factory HallEntity({
    required int id,
    required String name,
    required int size,
    required List<TableEntity> tables,
  }) = _HallEntity;

  factory HallEntity.fromJson(Map<String, dynamic> json) =>
      _$HallEntityFromJson(json);
}
