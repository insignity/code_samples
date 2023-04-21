part of 'order_bloc.dart';

@freezed
class OrderState with _$OrderState {
  const factory OrderState.initial() = _Initial;

  const factory OrderState.loading() = _Loading;

  const factory OrderState.loaded({
    required List<DishEntity> dishes,
    @Default(0) int guestCount,
  }) = _Loaded;

  const factory OrderState.error(Failure failure) = _Error;
}
