part of 'entities.dart';

@freezed
class EmployeeEntity with _$EmployeeEntity {
  const factory EmployeeEntity({
    required int id,
    required String name,
    required String surname,
    required String position,
    required String code,
  }) = _EmployeeEntity;

  factory EmployeeEntity.fromJson(Json json) => _$EmployeeEntityFromJson(json);
}
