part of 'entities.dart';

@freezed
class DishEntity with _$DishEntity {
  const factory DishEntity({
    required int id,
    required String name,
    List<ModifierEntity>? modifiers,
    List<DishEntity>? dishes,
    String? image,
    double? price,
  }) = _DishEntity;

  factory DishEntity.fromJson(Map<String, dynamic> json) =>
      _$DishEntityFromJson(json);
}
