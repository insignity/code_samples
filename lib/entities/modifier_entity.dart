part of 'entities.dart';

@freezed
class ModifierEntity with _$ModifierEntity {
  const factory ModifierEntity({
    required int id,
    required String name,
    String? image,
    int? minimum,
    int? maximum,
    double? price,
    List<ModifierEntity>? modifiers,
  }) = _ModifierEntity;

  factory ModifierEntity.fromJson(Map<String, dynamic> json) =>
      _$ModifierEntityFromJson(json);
}
