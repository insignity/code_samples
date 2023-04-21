part of 'quick_order_bloc.dart';

@freezed
class QuickOrderState with _$QuickOrderState {
  const factory QuickOrderState.initial() = _Initial;

  const factory QuickOrderState.loading() = _Loading;

  const factory QuickOrderState.loaded({
    required List<DishEntity> dishes,
    @Default([]) List<DishEntity> orderedDishes,
    int? guestsCount,
  }) = _Loaded;

  const factory QuickOrderState.error(Failure failure) = _Error;
}
