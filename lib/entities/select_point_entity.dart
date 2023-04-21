part of 'entities.dart';

@freezed
class PointEntity with _$PointEntity {
  const factory PointEntity({
    required List<EmployeeEntity> employees,
    required List<HallEntity> halls,
  }) = _PointEntity;

  factory PointEntity.fromJson(Json json) => _$PointEntityFromJson(json);
}
