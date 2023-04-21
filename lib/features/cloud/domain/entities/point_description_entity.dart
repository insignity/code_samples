part of 'cloud_entities.dart';

@freezed
class PointDescriptionEntity with _$PointDescriptionEntity {
  const factory PointDescriptionEntity({
    required int id,
    required String name,
    required String country,
    required String city,
    required String adress,
  }) = _PointDescriptionEntity;

  factory PointDescriptionEntity.fromJson(Json json) =>
      _$PointDescriptionEntityFromJson(json);
}

List<Json> listPointDescriptionEntityToJson(
        List<PointDescriptionEntity> points) =>
    points.map((e) => e.toJson()).toList();
