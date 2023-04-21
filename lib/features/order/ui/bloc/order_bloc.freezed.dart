// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$OrderEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() setNewOrder,
    required TResult Function(int count) setGuestCount,
    required TResult Function(DishEntity dish) chooseDish,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? setNewOrder,
    TResult? Function(int count)? setGuestCount,
    TResult? Function(DishEntity dish)? chooseDish,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? setNewOrder,
    TResult Function(int count)? setGuestCount,
    TResult Function(DishEntity dish)? chooseDish,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetNewOrder value) setNewOrder,
    required TResult Function(_SetGuestCount value) setGuestCount,
    required TResult Function(_ChooseDish value) chooseDish,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetNewOrder value)? setNewOrder,
    TResult? Function(_SetGuestCount value)? setGuestCount,
    TResult? Function(_ChooseDish value)? chooseDish,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetNewOrder value)? setNewOrder,
    TResult Function(_SetGuestCount value)? setGuestCount,
    TResult Function(_ChooseDish value)? chooseDish,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderEventCopyWith<$Res> {
  factory $OrderEventCopyWith(
          OrderEvent value, $Res Function(OrderEvent) then) =
      _$OrderEventCopyWithImpl<$Res, OrderEvent>;
}

/// @nodoc
class _$OrderEventCopyWithImpl<$Res, $Val extends OrderEvent>
    implements $OrderEventCopyWith<$Res> {
  _$OrderEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_SetNewOrderCopyWith<$Res> {
  factory _$$_SetNewOrderCopyWith(
          _$_SetNewOrder value, $Res Function(_$_SetNewOrder) then) =
      __$$_SetNewOrderCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SetNewOrderCopyWithImpl<$Res>
    extends _$OrderEventCopyWithImpl<$Res, _$_SetNewOrder>
    implements _$$_SetNewOrderCopyWith<$Res> {
  __$$_SetNewOrderCopyWithImpl(
      _$_SetNewOrder _value, $Res Function(_$_SetNewOrder) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_SetNewOrder implements _SetNewOrder {
  const _$_SetNewOrder();

  @override
  String toString() {
    return 'OrderEvent.setNewOrder()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SetNewOrder);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() setNewOrder,
    required TResult Function(int count) setGuestCount,
    required TResult Function(DishEntity dish) chooseDish,
  }) {
    return setNewOrder();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? setNewOrder,
    TResult? Function(int count)? setGuestCount,
    TResult? Function(DishEntity dish)? chooseDish,
  }) {
    return setNewOrder?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? setNewOrder,
    TResult Function(int count)? setGuestCount,
    TResult Function(DishEntity dish)? chooseDish,
    required TResult orElse(),
  }) {
    if (setNewOrder != null) {
      return setNewOrder();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetNewOrder value) setNewOrder,
    required TResult Function(_SetGuestCount value) setGuestCount,
    required TResult Function(_ChooseDish value) chooseDish,
  }) {
    return setNewOrder(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetNewOrder value)? setNewOrder,
    TResult? Function(_SetGuestCount value)? setGuestCount,
    TResult? Function(_ChooseDish value)? chooseDish,
  }) {
    return setNewOrder?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetNewOrder value)? setNewOrder,
    TResult Function(_SetGuestCount value)? setGuestCount,
    TResult Function(_ChooseDish value)? chooseDish,
    required TResult orElse(),
  }) {
    if (setNewOrder != null) {
      return setNewOrder(this);
    }
    return orElse();
  }
}

abstract class _SetNewOrder implements OrderEvent {
  const factory _SetNewOrder() = _$_SetNewOrder;
}

/// @nodoc
abstract class _$$_SetGuestCountCopyWith<$Res> {
  factory _$$_SetGuestCountCopyWith(
          _$_SetGuestCount value, $Res Function(_$_SetGuestCount) then) =
      __$$_SetGuestCountCopyWithImpl<$Res>;
  @useResult
  $Res call({int count});
}

/// @nodoc
class __$$_SetGuestCountCopyWithImpl<$Res>
    extends _$OrderEventCopyWithImpl<$Res, _$_SetGuestCount>
    implements _$$_SetGuestCountCopyWith<$Res> {
  __$$_SetGuestCountCopyWithImpl(
      _$_SetGuestCount _value, $Res Function(_$_SetGuestCount) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
  }) {
    return _then(_$_SetGuestCount(
      null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_SetGuestCount implements _SetGuestCount {
  const _$_SetGuestCount(this.count);

  @override
  final int count;

  @override
  String toString() {
    return 'OrderEvent.setGuestCount(count: $count)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SetGuestCount &&
            (identical(other.count, count) || other.count == count));
  }

  @override
  int get hashCode => Object.hash(runtimeType, count);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SetGuestCountCopyWith<_$_SetGuestCount> get copyWith =>
      __$$_SetGuestCountCopyWithImpl<_$_SetGuestCount>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() setNewOrder,
    required TResult Function(int count) setGuestCount,
    required TResult Function(DishEntity dish) chooseDish,
  }) {
    return setGuestCount(count);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? setNewOrder,
    TResult? Function(int count)? setGuestCount,
    TResult? Function(DishEntity dish)? chooseDish,
  }) {
    return setGuestCount?.call(count);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? setNewOrder,
    TResult Function(int count)? setGuestCount,
    TResult Function(DishEntity dish)? chooseDish,
    required TResult orElse(),
  }) {
    if (setGuestCount != null) {
      return setGuestCount(count);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetNewOrder value) setNewOrder,
    required TResult Function(_SetGuestCount value) setGuestCount,
    required TResult Function(_ChooseDish value) chooseDish,
  }) {
    return setGuestCount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetNewOrder value)? setNewOrder,
    TResult? Function(_SetGuestCount value)? setGuestCount,
    TResult? Function(_ChooseDish value)? chooseDish,
  }) {
    return setGuestCount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetNewOrder value)? setNewOrder,
    TResult Function(_SetGuestCount value)? setGuestCount,
    TResult Function(_ChooseDish value)? chooseDish,
    required TResult orElse(),
  }) {
    if (setGuestCount != null) {
      return setGuestCount(this);
    }
    return orElse();
  }
}

abstract class _SetGuestCount implements OrderEvent {
  const factory _SetGuestCount(final int count) = _$_SetGuestCount;

  int get count;
  @JsonKey(ignore: true)
  _$$_SetGuestCountCopyWith<_$_SetGuestCount> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ChooseDishCopyWith<$Res> {
  factory _$$_ChooseDishCopyWith(
          _$_ChooseDish value, $Res Function(_$_ChooseDish) then) =
      __$$_ChooseDishCopyWithImpl<$Res>;
  @useResult
  $Res call({DishEntity dish});

  $DishEntityCopyWith<$Res> get dish;
}

/// @nodoc
class __$$_ChooseDishCopyWithImpl<$Res>
    extends _$OrderEventCopyWithImpl<$Res, _$_ChooseDish>
    implements _$$_ChooseDishCopyWith<$Res> {
  __$$_ChooseDishCopyWithImpl(
      _$_ChooseDish _value, $Res Function(_$_ChooseDish) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dish = null,
  }) {
    return _then(_$_ChooseDish(
      null == dish
          ? _value.dish
          : dish // ignore: cast_nullable_to_non_nullable
              as DishEntity,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $DishEntityCopyWith<$Res> get dish {
    return $DishEntityCopyWith<$Res>(_value.dish, (value) {
      return _then(_value.copyWith(dish: value));
    });
  }
}

/// @nodoc

class _$_ChooseDish implements _ChooseDish {
  const _$_ChooseDish(this.dish);

  @override
  final DishEntity dish;

  @override
  String toString() {
    return 'OrderEvent.chooseDish(dish: $dish)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChooseDish &&
            (identical(other.dish, dish) || other.dish == dish));
  }

  @override
  int get hashCode => Object.hash(runtimeType, dish);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChooseDishCopyWith<_$_ChooseDish> get copyWith =>
      __$$_ChooseDishCopyWithImpl<_$_ChooseDish>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() setNewOrder,
    required TResult Function(int count) setGuestCount,
    required TResult Function(DishEntity dish) chooseDish,
  }) {
    return chooseDish(dish);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? setNewOrder,
    TResult? Function(int count)? setGuestCount,
    TResult? Function(DishEntity dish)? chooseDish,
  }) {
    return chooseDish?.call(dish);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? setNewOrder,
    TResult Function(int count)? setGuestCount,
    TResult Function(DishEntity dish)? chooseDish,
    required TResult orElse(),
  }) {
    if (chooseDish != null) {
      return chooseDish(dish);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetNewOrder value) setNewOrder,
    required TResult Function(_SetGuestCount value) setGuestCount,
    required TResult Function(_ChooseDish value) chooseDish,
  }) {
    return chooseDish(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetNewOrder value)? setNewOrder,
    TResult? Function(_SetGuestCount value)? setGuestCount,
    TResult? Function(_ChooseDish value)? chooseDish,
  }) {
    return chooseDish?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetNewOrder value)? setNewOrder,
    TResult Function(_SetGuestCount value)? setGuestCount,
    TResult Function(_ChooseDish value)? chooseDish,
    required TResult orElse(),
  }) {
    if (chooseDish != null) {
      return chooseDish(this);
    }
    return orElse();
  }
}

abstract class _ChooseDish implements OrderEvent {
  const factory _ChooseDish(final DishEntity dish) = _$_ChooseDish;

  DishEntity get dish;
  @JsonKey(ignore: true)
  _$$_ChooseDishCopyWith<_$_ChooseDish> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$OrderState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<DishEntity> dishes, int guestCount) loaded,
    required TResult Function(Failure failure) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<DishEntity> dishes, int guestCount)? loaded,
    TResult? Function(Failure failure)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<DishEntity> dishes, int guestCount)? loaded,
    TResult Function(Failure failure)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderStateCopyWith<$Res> {
  factory $OrderStateCopyWith(
          OrderState value, $Res Function(OrderState) then) =
      _$OrderStateCopyWithImpl<$Res, OrderState>;
}

/// @nodoc
class _$OrderStateCopyWithImpl<$Res, $Val extends OrderState>
    implements $OrderStateCopyWith<$Res> {
  _$OrderStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$OrderStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'OrderState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<DishEntity> dishes, int guestCount) loaded,
    required TResult Function(Failure failure) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<DishEntity> dishes, int guestCount)? loaded,
    TResult? Function(Failure failure)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<DishEntity> dishes, int guestCount)? loaded,
    TResult Function(Failure failure)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements OrderState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res>
    extends _$OrderStateCopyWithImpl<$Res, _$_Loading>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'OrderState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<DishEntity> dishes, int guestCount) loaded,
    required TResult Function(Failure failure) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<DishEntity> dishes, int guestCount)? loaded,
    TResult? Function(Failure failure)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<DishEntity> dishes, int guestCount)? loaded,
    TResult Function(Failure failure)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements OrderState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$$_LoadedCopyWith<$Res> {
  factory _$$_LoadedCopyWith(_$_Loaded value, $Res Function(_$_Loaded) then) =
      __$$_LoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({List<DishEntity> dishes, int guestCount});
}

/// @nodoc
class __$$_LoadedCopyWithImpl<$Res>
    extends _$OrderStateCopyWithImpl<$Res, _$_Loaded>
    implements _$$_LoadedCopyWith<$Res> {
  __$$_LoadedCopyWithImpl(_$_Loaded _value, $Res Function(_$_Loaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dishes = null,
    Object? guestCount = null,
  }) {
    return _then(_$_Loaded(
      dishes: null == dishes
          ? _value._dishes
          : dishes // ignore: cast_nullable_to_non_nullable
              as List<DishEntity>,
      guestCount: null == guestCount
          ? _value.guestCount
          : guestCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_Loaded implements _Loaded {
  const _$_Loaded({required final List<DishEntity> dishes, this.guestCount = 0})
      : _dishes = dishes;

  final List<DishEntity> _dishes;
  @override
  List<DishEntity> get dishes {
    if (_dishes is EqualUnmodifiableListView) return _dishes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dishes);
  }

  @override
  @JsonKey()
  final int guestCount;

  @override
  String toString() {
    return 'OrderState.loaded(dishes: $dishes, guestCount: $guestCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Loaded &&
            const DeepCollectionEquality().equals(other._dishes, _dishes) &&
            (identical(other.guestCount, guestCount) ||
                other.guestCount == guestCount));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_dishes), guestCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadedCopyWith<_$_Loaded> get copyWith =>
      __$$_LoadedCopyWithImpl<_$_Loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<DishEntity> dishes, int guestCount) loaded,
    required TResult Function(Failure failure) error,
  }) {
    return loaded(dishes, guestCount);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<DishEntity> dishes, int guestCount)? loaded,
    TResult? Function(Failure failure)? error,
  }) {
    return loaded?.call(dishes, guestCount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<DishEntity> dishes, int guestCount)? loaded,
    TResult Function(Failure failure)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(dishes, guestCount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements OrderState {
  const factory _Loaded(
      {required final List<DishEntity> dishes,
      final int guestCount}) = _$_Loaded;

  List<DishEntity> get dishes;
  int get guestCount;
  @JsonKey(ignore: true)
  _$$_LoadedCopyWith<_$_Loaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ErrorCopyWith<$Res> {
  factory _$$_ErrorCopyWith(_$_Error value, $Res Function(_$_Error) then) =
      __$$_ErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({Failure failure});
}

/// @nodoc
class __$$_ErrorCopyWithImpl<$Res>
    extends _$OrderStateCopyWithImpl<$Res, _$_Error>
    implements _$$_ErrorCopyWith<$Res> {
  __$$_ErrorCopyWithImpl(_$_Error _value, $Res Function(_$_Error) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$_Error(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }
}

/// @nodoc

class _$_Error implements _Error {
  const _$_Error(this.failure);

  @override
  final Failure failure;

  @override
  String toString() {
    return 'OrderState.error(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Error &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ErrorCopyWith<_$_Error> get copyWith =>
      __$$_ErrorCopyWithImpl<_$_Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<DishEntity> dishes, int guestCount) loaded,
    required TResult Function(Failure failure) error,
  }) {
    return error(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<DishEntity> dishes, int guestCount)? loaded,
    TResult? Function(Failure failure)? error,
  }) {
    return error?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<DishEntity> dishes, int guestCount)? loaded,
    TResult Function(Failure failure)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements OrderState {
  const factory _Error(final Failure failure) = _$_Error;

  Failure get failure;
  @JsonKey(ignore: true)
  _$$_ErrorCopyWith<_$_Error> get copyWith =>
      throw _privateConstructorUsedError;
}
