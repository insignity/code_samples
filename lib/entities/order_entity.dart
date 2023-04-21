part of 'entities.dart';

@freezed
class OrderEntity with _$OrderEntity {
  const factory OrderEntity({
    required List<DishEntity> dishes,
    required int orderId,
    required int cashierId,
    required double totalPrice,
    DateTime? checkTime,
    int? tableId,
    int? waiterId,
    int? guestId,
  }) = _OrderEntity;

//todo sales
  factory OrderEntity.fromJson(Map<String, dynamic> json) =>
      _$OrderEntityFromJson(json);
}
