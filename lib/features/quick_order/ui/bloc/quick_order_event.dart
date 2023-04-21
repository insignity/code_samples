part of 'quick_order_bloc.dart';

@freezed
class QuickOrderEvent with _$QuickOrderEvent {
  const factory QuickOrderEvent.getDishes() = _GetDishes;

  const factory QuickOrderEvent.setGuestCount(int count) = _SetGuestCount;

  const factory QuickOrderEvent.addDish(DishEntity dish) = _AddDish;
  const factory QuickOrderEvent.removeDish(DishEntity dish) = _RemoveDish;
}
