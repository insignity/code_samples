// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'quick_order_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$QuickOrderEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getDishes,
    required TResult Function(int count) setGuestCount,
    required TResult Function(DishEntity dish) addDish,
    required TResult Function(DishEntity dish) removeDish,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getDishes,
    TResult? Function(int count)? setGuestCount,
    TResult? Function(DishEntity dish)? addDish,
    TResult? Function(DishEntity dish)? removeDish,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getDishes,
    TResult Function(int count)? setGuestCount,
    TResult Function(DishEntity dish)? addDish,
    TResult Function(DishEntity dish)? removeDish,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetDishes value) getDishes,
    required TResult Function(_SetGuestCount value) setGuestCount,
    required TResult Function(_AddDish value) addDish,
    required TResult Function(_RemoveDish value) removeDish,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetDishes value)? getDishes,
    TResult? Function(_SetGuestCount value)? setGuestCount,
    TResult? Function(_AddDish value)? addDish,
    TResult? Function(_RemoveDish value)? removeDish,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetDishes value)? getDishes,
    TResult Function(_SetGuestCount value)? setGuestCount,
    TResult Function(_AddDish value)? addDish,
    TResult Function(_RemoveDish value)? removeDish,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuickOrderEventCopyWith<$Res> {
  factory $QuickOrderEventCopyWith(
          QuickOrderEvent value, $Res Function(QuickOrderEvent) then) =
      _$QuickOrderEventCopyWithImpl<$Res, QuickOrderEvent>;
}

/// @nodoc
class _$QuickOrderEventCopyWithImpl<$Res, $Val extends QuickOrderEvent>
    implements $QuickOrderEventCopyWith<$Res> {
  _$QuickOrderEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_GetDishesCopyWith<$Res> {
  factory _$$_GetDishesCopyWith(
          _$_GetDishes value, $Res Function(_$_GetDishes) then) =
      __$$_GetDishesCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GetDishesCopyWithImpl<$Res>
    extends _$QuickOrderEventCopyWithImpl<$Res, _$_GetDishes>
    implements _$$_GetDishesCopyWith<$Res> {
  __$$_GetDishesCopyWithImpl(
      _$_GetDishes _value, $Res Function(_$_GetDishes) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_GetDishes implements _GetDishes {
  const _$_GetDishes();

  @override
  String toString() {
    return 'QuickOrderEvent.getDishes()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_GetDishes);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getDishes,
    required TResult Function(int count) setGuestCount,
    required TResult Function(DishEntity dish) addDish,
    required TResult Function(DishEntity dish) removeDish,
  }) {
    return getDishes();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getDishes,
    TResult? Function(int count)? setGuestCount,
    TResult? Function(DishEntity dish)? addDish,
    TResult? Function(DishEntity dish)? removeDish,
  }) {
    return getDishes?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getDishes,
    TResult Function(int count)? setGuestCount,
    TResult Function(DishEntity dish)? addDish,
    TResult Function(DishEntity dish)? removeDish,
    required TResult orElse(),
  }) {
    if (getDishes != null) {
      return getDishes();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetDishes value) getDishes,
    required TResult Function(_SetGuestCount value) setGuestCount,
    required TResult Function(_AddDish value) addDish,
    required TResult Function(_RemoveDish value) removeDish,
  }) {
    return getDishes(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetDishes value)? getDishes,
    TResult? Function(_SetGuestCount value)? setGuestCount,
    TResult? Function(_AddDish value)? addDish,
    TResult? Function(_RemoveDish value)? removeDish,
  }) {
    return getDishes?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetDishes value)? getDishes,
    TResult Function(_SetGuestCount value)? setGuestCount,
    TResult Function(_AddDish value)? addDish,
    TResult Function(_RemoveDish value)? removeDish,
    required TResult orElse(),
  }) {
    if (getDishes != null) {
      return getDishes(this);
    }
    return orElse();
  }
}

abstract class _GetDishes implements QuickOrderEvent {
  const factory _GetDishes() = _$_GetDishes;
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
    extends _$QuickOrderEventCopyWithImpl<$Res, _$_SetGuestCount>
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
    return 'QuickOrderEvent.setGuestCount(count: $count)';
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
    required TResult Function() getDishes,
    required TResult Function(int count) setGuestCount,
    required TResult Function(DishEntity dish) addDish,
    required TResult Function(DishEntity dish) removeDish,
  }) {
    return setGuestCount(count);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getDishes,
    TResult? Function(int count)? setGuestCount,
    TResult? Function(DishEntity dish)? addDish,
    TResult? Function(DishEntity dish)? removeDish,
  }) {
    return setGuestCount?.call(count);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getDishes,
    TResult Function(int count)? setGuestCount,
    TResult Function(DishEntity dish)? addDish,
    TResult Function(DishEntity dish)? removeDish,
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
    required TResult Function(_GetDishes value) getDishes,
    required TResult Function(_SetGuestCount value) setGuestCount,
    required TResult Function(_AddDish value) addDish,
    required TResult Function(_RemoveDish value) removeDish,
  }) {
    return setGuestCount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetDishes value)? getDishes,
    TResult? Function(_SetGuestCount value)? setGuestCount,
    TResult? Function(_AddDish value)? addDish,
    TResult? Function(_RemoveDish value)? removeDish,
  }) {
    return setGuestCount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetDishes value)? getDishes,
    TResult Function(_SetGuestCount value)? setGuestCount,
    TResult Function(_AddDish value)? addDish,
    TResult Function(_RemoveDish value)? removeDish,
    required TResult orElse(),
  }) {
    if (setGuestCount != null) {
      return setGuestCount(this);
    }
    return orElse();
  }
}

abstract class _SetGuestCount implements QuickOrderEvent {
  const factory _SetGuestCount(final int count) = _$_SetGuestCount;

  int get count;
  @JsonKey(ignore: true)
  _$$_SetGuestCountCopyWith<_$_SetGuestCount> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AddDishCopyWith<$Res> {
  factory _$$_AddDishCopyWith(
          _$_AddDish value, $Res Function(_$_AddDish) then) =
      __$$_AddDishCopyWithImpl<$Res>;
  @useResult
  $Res call({DishEntity dish});

  $DishEntityCopyWith<$Res> get dish;
}

/// @nodoc
class __$$_AddDishCopyWithImpl<$Res>
    extends _$QuickOrderEventCopyWithImpl<$Res, _$_AddDish>
    implements _$$_AddDishCopyWith<$Res> {
  __$$_AddDishCopyWithImpl(_$_AddDish _value, $Res Function(_$_AddDish) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dish = null,
  }) {
    return _then(_$_AddDish(
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

class _$_AddDish implements _AddDish {
  const _$_AddDish(this.dish);

  @override
  final DishEntity dish;

  @override
  String toString() {
    return 'QuickOrderEvent.addDish(dish: $dish)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddDish &&
            (identical(other.dish, dish) || other.dish == dish));
  }

  @override
  int get hashCode => Object.hash(runtimeType, dish);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddDishCopyWith<_$_AddDish> get copyWith =>
      __$$_AddDishCopyWithImpl<_$_AddDish>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getDishes,
    required TResult Function(int count) setGuestCount,
    required TResult Function(DishEntity dish) addDish,
    required TResult Function(DishEntity dish) removeDish,
  }) {
    return addDish(dish);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getDishes,
    TResult? Function(int count)? setGuestCount,
    TResult? Function(DishEntity dish)? addDish,
    TResult? Function(DishEntity dish)? removeDish,
  }) {
    return addDish?.call(dish);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getDishes,
    TResult Function(int count)? setGuestCount,
    TResult Function(DishEntity dish)? addDish,
    TResult Function(DishEntity dish)? removeDish,
    required TResult orElse(),
  }) {
    if (addDish != null) {
      return addDish(dish);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetDishes value) getDishes,
    required TResult Function(_SetGuestCount value) setGuestCount,
    required TResult Function(_AddDish value) addDish,
    required TResult Function(_RemoveDish value) removeDish,
  }) {
    return addDish(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetDishes value)? getDishes,
    TResult? Function(_SetGuestCount value)? setGuestCount,
    TResult? Function(_AddDish value)? addDish,
    TResult? Function(_RemoveDish value)? removeDish,
  }) {
    return addDish?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetDishes value)? getDishes,
    TResult Function(_SetGuestCount value)? setGuestCount,
    TResult Function(_AddDish value)? addDish,
    TResult Function(_RemoveDish value)? removeDish,
    required TResult orElse(),
  }) {
    if (addDish != null) {
      return addDish(this);
    }
    return orElse();
  }
}

abstract class _AddDish implements QuickOrderEvent {
  const factory _AddDish(final DishEntity dish) = _$_AddDish;

  DishEntity get dish;
  @JsonKey(ignore: true)
  _$$_AddDishCopyWith<_$_AddDish> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_RemoveDishCopyWith<$Res> {
  factory _$$_RemoveDishCopyWith(
          _$_RemoveDish value, $Res Function(_$_RemoveDish) then) =
      __$$_RemoveDishCopyWithImpl<$Res>;
  @useResult
  $Res call({DishEntity dish});

  $DishEntityCopyWith<$Res> get dish;
}

/// @nodoc
class __$$_RemoveDishCopyWithImpl<$Res>
    extends _$QuickOrderEventCopyWithImpl<$Res, _$_RemoveDish>
    implements _$$_RemoveDishCopyWith<$Res> {
  __$$_RemoveDishCopyWithImpl(
      _$_RemoveDish _value, $Res Function(_$_RemoveDish) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dish = null,
  }) {
    return _then(_$_RemoveDish(
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

class _$_RemoveDish implements _RemoveDish {
  const _$_RemoveDish(this.dish);

  @override
  final DishEntity dish;

  @override
  String toString() {
    return 'QuickOrderEvent.removeDish(dish: $dish)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RemoveDish &&
            (identical(other.dish, dish) || other.dish == dish));
  }

  @override
  int get hashCode => Object.hash(runtimeType, dish);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RemoveDishCopyWith<_$_RemoveDish> get copyWith =>
      __$$_RemoveDishCopyWithImpl<_$_RemoveDish>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getDishes,
    required TResult Function(int count) setGuestCount,
    required TResult Function(DishEntity dish) addDish,
    required TResult Function(DishEntity dish) removeDish,
  }) {
    return removeDish(dish);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getDishes,
    TResult? Function(int count)? setGuestCount,
    TResult? Function(DishEntity dish)? addDish,
    TResult? Function(DishEntity dish)? removeDish,
  }) {
    return removeDish?.call(dish);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getDishes,
    TResult Function(int count)? setGuestCount,
    TResult Function(DishEntity dish)? addDish,
    TResult Function(DishEntity dish)? removeDish,
    required TResult orElse(),
  }) {
    if (removeDish != null) {
      return removeDish(dish);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetDishes value) getDishes,
    required TResult Function(_SetGuestCount value) setGuestCount,
    required TResult Function(_AddDish value) addDish,
    required TResult Function(_RemoveDish value) removeDish,
  }) {
    return removeDish(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetDishes value)? getDishes,
    TResult? Function(_SetGuestCount value)? setGuestCount,
    TResult? Function(_AddDish value)? addDish,
    TResult? Function(_RemoveDish value)? removeDish,
  }) {
    return removeDish?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetDishes value)? getDishes,
    TResult Function(_SetGuestCount value)? setGuestCount,
    TResult Function(_AddDish value)? addDish,
    TResult Function(_RemoveDish value)? removeDish,
    required TResult orElse(),
  }) {
    if (removeDish != null) {
      return removeDish(this);
    }
    return orElse();
  }
}

abstract class _RemoveDish implements QuickOrderEvent {
  const factory _RemoveDish(final DishEntity dish) = _$_RemoveDish;

  DishEntity get dish;
  @JsonKey(ignore: true)
  _$$_RemoveDishCopyWith<_$_RemoveDish> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$QuickOrderState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<DishEntity> dishes,
            List<DishEntity> orderedDishes, int? guestsCount)
        loaded,
    required TResult Function(Failure failure) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<DishEntity> dishes, List<DishEntity> orderedDishes,
            int? guestsCount)?
        loaded,
    TResult? Function(Failure failure)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<DishEntity> dishes, List<DishEntity> orderedDishes,
            int? guestsCount)?
        loaded,
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
abstract class $QuickOrderStateCopyWith<$Res> {
  factory $QuickOrderStateCopyWith(
          QuickOrderState value, $Res Function(QuickOrderState) then) =
      _$QuickOrderStateCopyWithImpl<$Res, QuickOrderState>;
}

/// @nodoc
class _$QuickOrderStateCopyWithImpl<$Res, $Val extends QuickOrderState>
    implements $QuickOrderStateCopyWith<$Res> {
  _$QuickOrderStateCopyWithImpl(this._value, this._then);

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
    extends _$QuickOrderStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'QuickOrderState.initial()';
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
    required TResult Function(List<DishEntity> dishes,
            List<DishEntity> orderedDishes, int? guestsCount)
        loaded,
    required TResult Function(Failure failure) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<DishEntity> dishes, List<DishEntity> orderedDishes,
            int? guestsCount)?
        loaded,
    TResult? Function(Failure failure)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<DishEntity> dishes, List<DishEntity> orderedDishes,
            int? guestsCount)?
        loaded,
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

abstract class _Initial implements QuickOrderState {
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
    extends _$QuickOrderStateCopyWithImpl<$Res, _$_Loading>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'QuickOrderState.loading()';
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
    required TResult Function(List<DishEntity> dishes,
            List<DishEntity> orderedDishes, int? guestsCount)
        loaded,
    required TResult Function(Failure failure) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<DishEntity> dishes, List<DishEntity> orderedDishes,
            int? guestsCount)?
        loaded,
    TResult? Function(Failure failure)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<DishEntity> dishes, List<DishEntity> orderedDishes,
            int? guestsCount)?
        loaded,
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

abstract class _Loading implements QuickOrderState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$$_LoadedCopyWith<$Res> {
  factory _$$_LoadedCopyWith(_$_Loaded value, $Res Function(_$_Loaded) then) =
      __$$_LoadedCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<DishEntity> dishes,
      List<DishEntity> orderedDishes,
      int? guestsCount});
}

/// @nodoc
class __$$_LoadedCopyWithImpl<$Res>
    extends _$QuickOrderStateCopyWithImpl<$Res, _$_Loaded>
    implements _$$_LoadedCopyWith<$Res> {
  __$$_LoadedCopyWithImpl(_$_Loaded _value, $Res Function(_$_Loaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dishes = null,
    Object? orderedDishes = null,
    Object? guestsCount = freezed,
  }) {
    return _then(_$_Loaded(
      dishes: null == dishes
          ? _value._dishes
          : dishes // ignore: cast_nullable_to_non_nullable
              as List<DishEntity>,
      orderedDishes: null == orderedDishes
          ? _value._orderedDishes
          : orderedDishes // ignore: cast_nullable_to_non_nullable
              as List<DishEntity>,
      guestsCount: freezed == guestsCount
          ? _value.guestsCount
          : guestsCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$_Loaded implements _Loaded {
  const _$_Loaded(
      {required final List<DishEntity> dishes,
      final List<DishEntity> orderedDishes = const [],
      this.guestsCount})
      : _dishes = dishes,
        _orderedDishes = orderedDishes;

  final List<DishEntity> _dishes;
  @override
  List<DishEntity> get dishes {
    if (_dishes is EqualUnmodifiableListView) return _dishes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dishes);
  }

  final List<DishEntity> _orderedDishes;
  @override
  @JsonKey()
  List<DishEntity> get orderedDishes {
    if (_orderedDishes is EqualUnmodifiableListView) return _orderedDishes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_orderedDishes);
  }

  @override
  final int? guestsCount;

  @override
  String toString() {
    return 'QuickOrderState.loaded(dishes: $dishes, orderedDishes: $orderedDishes, guestsCount: $guestsCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Loaded &&
            const DeepCollectionEquality().equals(other._dishes, _dishes) &&
            const DeepCollectionEquality()
                .equals(other._orderedDishes, _orderedDishes) &&
            (identical(other.guestsCount, guestsCount) ||
                other.guestsCount == guestsCount));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_dishes),
      const DeepCollectionEquality().hash(_orderedDishes),
      guestsCount);

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
    required TResult Function(List<DishEntity> dishes,
            List<DishEntity> orderedDishes, int? guestsCount)
        loaded,
    required TResult Function(Failure failure) error,
  }) {
    return loaded(dishes, orderedDishes, guestsCount);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<DishEntity> dishes, List<DishEntity> orderedDishes,
            int? guestsCount)?
        loaded,
    TResult? Function(Failure failure)? error,
  }) {
    return loaded?.call(dishes, orderedDishes, guestsCount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<DishEntity> dishes, List<DishEntity> orderedDishes,
            int? guestsCount)?
        loaded,
    TResult Function(Failure failure)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(dishes, orderedDishes, guestsCount);
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

abstract class _Loaded implements QuickOrderState {
  const factory _Loaded(
      {required final List<DishEntity> dishes,
      final List<DishEntity> orderedDishes,
      final int? guestsCount}) = _$_Loaded;

  List<DishEntity> get dishes;
  List<DishEntity> get orderedDishes;
  int? get guestsCount;
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
    extends _$QuickOrderStateCopyWithImpl<$Res, _$_Error>
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
    return 'QuickOrderState.error(failure: $failure)';
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
    required TResult Function(List<DishEntity> dishes,
            List<DishEntity> orderedDishes, int? guestsCount)
        loaded,
    required TResult Function(Failure failure) error,
  }) {
    return error(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<DishEntity> dishes, List<DishEntity> orderedDishes,
            int? guestsCount)?
        loaded,
    TResult? Function(Failure failure)? error,
  }) {
    return error?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<DishEntity> dishes, List<DishEntity> orderedDishes,
            int? guestsCount)?
        loaded,
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

abstract class _Error implements QuickOrderState {
  const factory _Error(final Failure failure) = _$_Error;

  Failure get failure;
  @JsonKey(ignore: true)
  _$$_ErrorCopyWith<_$_Error> get copyWith =>
      throw _privateConstructorUsedError;
}
