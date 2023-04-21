part of 'order_bloc.dart';

@freezed
class OrderEvent with _$OrderEvent {
  const factory OrderEvent.setNewOrder() = _SetNewOrder;
  const factory OrderEvent.setGuestCount(int count) = _SetGuestCount;
  const factory OrderEvent.chooseDish(DishEntity dish) = _ChooseDish;
}
