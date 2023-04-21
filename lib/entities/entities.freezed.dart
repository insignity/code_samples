// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'entities.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CloudToken _$CloudTokenFromJson(Map<String, dynamic> json) {
  return _CloudToken.fromJson(json);
}

/// @nodoc
mixin _$CloudToken {
  String get text => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CloudTokenCopyWith<CloudToken> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CloudTokenCopyWith<$Res> {
  factory $CloudTokenCopyWith(
          CloudToken value, $Res Function(CloudToken) then) =
      _$CloudTokenCopyWithImpl<$Res, CloudToken>;
  @useResult
  $Res call({String text});
}

/// @nodoc
class _$CloudTokenCopyWithImpl<$Res, $Val extends CloudToken>
    implements $CloudTokenCopyWith<$Res> {
  _$CloudTokenCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
  }) {
    return _then(_value.copyWith(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CloudTokenCopyWith<$Res>
    implements $CloudTokenCopyWith<$Res> {
  factory _$$_CloudTokenCopyWith(
          _$_CloudToken value, $Res Function(_$_CloudToken) then) =
      __$$_CloudTokenCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String text});
}

/// @nodoc
class __$$_CloudTokenCopyWithImpl<$Res>
    extends _$CloudTokenCopyWithImpl<$Res, _$_CloudToken>
    implements _$$_CloudTokenCopyWith<$Res> {
  __$$_CloudTokenCopyWithImpl(
      _$_CloudToken _value, $Res Function(_$_CloudToken) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
  }) {
    return _then(_$_CloudToken(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CloudToken implements _CloudToken {
  const _$_CloudToken({required this.text});

  factory _$_CloudToken.fromJson(Map<String, dynamic> json) =>
      _$$_CloudTokenFromJson(json);

  @override
  final String text;

  @override
  String toString() {
    return 'CloudToken(text: $text)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CloudToken &&
            (identical(other.text, text) || other.text == text));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, text);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CloudTokenCopyWith<_$_CloudToken> get copyWith =>
      __$$_CloudTokenCopyWithImpl<_$_CloudToken>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CloudTokenToJson(
      this,
    );
  }
}

abstract class _CloudToken implements CloudToken {
  const factory _CloudToken({required final String text}) = _$_CloudToken;

  factory _CloudToken.fromJson(Map<String, dynamic> json) =
      _$_CloudToken.fromJson;

  @override
  String get text;
  @override
  @JsonKey(ignore: true)
  _$$_CloudTokenCopyWith<_$_CloudToken> get copyWith =>
      throw _privateConstructorUsedError;
}

DishEntity _$DishEntityFromJson(Map<String, dynamic> json) {
  return _DishEntity.fromJson(json);
}

/// @nodoc
mixin _$DishEntity {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  List<ModifierEntity>? get modifiers => throw _privateConstructorUsedError;
  List<DishEntity>? get dishes => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  double? get price => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DishEntityCopyWith<DishEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DishEntityCopyWith<$Res> {
  factory $DishEntityCopyWith(
          DishEntity value, $Res Function(DishEntity) then) =
      _$DishEntityCopyWithImpl<$Res, DishEntity>;
  @useResult
  $Res call(
      {int id,
      String name,
      List<ModifierEntity>? modifiers,
      List<DishEntity>? dishes,
      String? image,
      double? price});
}

/// @nodoc
class _$DishEntityCopyWithImpl<$Res, $Val extends DishEntity>
    implements $DishEntityCopyWith<$Res> {
  _$DishEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? modifiers = freezed,
    Object? dishes = freezed,
    Object? image = freezed,
    Object? price = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      modifiers: freezed == modifiers
          ? _value.modifiers
          : modifiers // ignore: cast_nullable_to_non_nullable
              as List<ModifierEntity>?,
      dishes: freezed == dishes
          ? _value.dishes
          : dishes // ignore: cast_nullable_to_non_nullable
              as List<DishEntity>?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DishEntityCopyWith<$Res>
    implements $DishEntityCopyWith<$Res> {
  factory _$$_DishEntityCopyWith(
          _$_DishEntity value, $Res Function(_$_DishEntity) then) =
      __$$_DishEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      List<ModifierEntity>? modifiers,
      List<DishEntity>? dishes,
      String? image,
      double? price});
}

/// @nodoc
class __$$_DishEntityCopyWithImpl<$Res>
    extends _$DishEntityCopyWithImpl<$Res, _$_DishEntity>
    implements _$$_DishEntityCopyWith<$Res> {
  __$$_DishEntityCopyWithImpl(
      _$_DishEntity _value, $Res Function(_$_DishEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? modifiers = freezed,
    Object? dishes = freezed,
    Object? image = freezed,
    Object? price = freezed,
  }) {
    return _then(_$_DishEntity(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      modifiers: freezed == modifiers
          ? _value._modifiers
          : modifiers // ignore: cast_nullable_to_non_nullable
              as List<ModifierEntity>?,
      dishes: freezed == dishes
          ? _value._dishes
          : dishes // ignore: cast_nullable_to_non_nullable
              as List<DishEntity>?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DishEntity implements _DishEntity {
  const _$_DishEntity(
      {required this.id,
      required this.name,
      final List<ModifierEntity>? modifiers,
      final List<DishEntity>? dishes,
      this.image,
      this.price})
      : _modifiers = modifiers,
        _dishes = dishes;

  factory _$_DishEntity.fromJson(Map<String, dynamic> json) =>
      _$$_DishEntityFromJson(json);

  @override
  final int id;
  @override
  final String name;
  final List<ModifierEntity>? _modifiers;
  @override
  List<ModifierEntity>? get modifiers {
    final value = _modifiers;
    if (value == null) return null;
    if (_modifiers is EqualUnmodifiableListView) return _modifiers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<DishEntity>? _dishes;
  @override
  List<DishEntity>? get dishes {
    final value = _dishes;
    if (value == null) return null;
    if (_dishes is EqualUnmodifiableListView) return _dishes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? image;
  @override
  final double? price;

  @override
  String toString() {
    return 'DishEntity(id: $id, name: $name, modifiers: $modifiers, dishes: $dishes, image: $image, price: $price)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DishEntity &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality()
                .equals(other._modifiers, _modifiers) &&
            const DeepCollectionEquality().equals(other._dishes, _dishes) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.price, price) || other.price == price));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      const DeepCollectionEquality().hash(_modifiers),
      const DeepCollectionEquality().hash(_dishes),
      image,
      price);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DishEntityCopyWith<_$_DishEntity> get copyWith =>
      __$$_DishEntityCopyWithImpl<_$_DishEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DishEntityToJson(
      this,
    );
  }
}

abstract class _DishEntity implements DishEntity {
  const factory _DishEntity(
      {required final int id,
      required final String name,
      final List<ModifierEntity>? modifiers,
      final List<DishEntity>? dishes,
      final String? image,
      final double? price}) = _$_DishEntity;

  factory _DishEntity.fromJson(Map<String, dynamic> json) =
      _$_DishEntity.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  List<ModifierEntity>? get modifiers;
  @override
  List<DishEntity>? get dishes;
  @override
  String? get image;
  @override
  double? get price;
  @override
  @JsonKey(ignore: true)
  _$$_DishEntityCopyWith<_$_DishEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

EmployeeEntity _$EmployeeEntityFromJson(Map<String, dynamic> json) {
  return _EmployeeEntity.fromJson(json);
}

/// @nodoc
mixin _$EmployeeEntity {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get surname => throw _privateConstructorUsedError;
  String get position => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EmployeeEntityCopyWith<EmployeeEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmployeeEntityCopyWith<$Res> {
  factory $EmployeeEntityCopyWith(
          EmployeeEntity value, $Res Function(EmployeeEntity) then) =
      _$EmployeeEntityCopyWithImpl<$Res, EmployeeEntity>;
  @useResult
  $Res call(
      {int id, String name, String surname, String position, String code});
}

/// @nodoc
class _$EmployeeEntityCopyWithImpl<$Res, $Val extends EmployeeEntity>
    implements $EmployeeEntityCopyWith<$Res> {
  _$EmployeeEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? surname = null,
    Object? position = null,
    Object? code = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      surname: null == surname
          ? _value.surname
          : surname // ignore: cast_nullable_to_non_nullable
              as String,
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_EmployeeEntityCopyWith<$Res>
    implements $EmployeeEntityCopyWith<$Res> {
  factory _$$_EmployeeEntityCopyWith(
          _$_EmployeeEntity value, $Res Function(_$_EmployeeEntity) then) =
      __$$_EmployeeEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id, String name, String surname, String position, String code});
}

/// @nodoc
class __$$_EmployeeEntityCopyWithImpl<$Res>
    extends _$EmployeeEntityCopyWithImpl<$Res, _$_EmployeeEntity>
    implements _$$_EmployeeEntityCopyWith<$Res> {
  __$$_EmployeeEntityCopyWithImpl(
      _$_EmployeeEntity _value, $Res Function(_$_EmployeeEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? surname = null,
    Object? position = null,
    Object? code = null,
  }) {
    return _then(_$_EmployeeEntity(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      surname: null == surname
          ? _value.surname
          : surname // ignore: cast_nullable_to_non_nullable
              as String,
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_EmployeeEntity implements _EmployeeEntity {
  const _$_EmployeeEntity(
      {required this.id,
      required this.name,
      required this.surname,
      required this.position,
      required this.code});

  factory _$_EmployeeEntity.fromJson(Map<String, dynamic> json) =>
      _$$_EmployeeEntityFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String surname;
  @override
  final String position;
  @override
  final String code;

  @override
  String toString() {
    return 'EmployeeEntity(id: $id, name: $name, surname: $surname, position: $position, code: $code)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EmployeeEntity &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.surname, surname) || other.surname == surname) &&
            (identical(other.position, position) ||
                other.position == position) &&
            (identical(other.code, code) || other.code == code));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, surname, position, code);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EmployeeEntityCopyWith<_$_EmployeeEntity> get copyWith =>
      __$$_EmployeeEntityCopyWithImpl<_$_EmployeeEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EmployeeEntityToJson(
      this,
    );
  }
}

abstract class _EmployeeEntity implements EmployeeEntity {
  const factory _EmployeeEntity(
      {required final int id,
      required final String name,
      required final String surname,
      required final String position,
      required final String code}) = _$_EmployeeEntity;

  factory _EmployeeEntity.fromJson(Map<String, dynamic> json) =
      _$_EmployeeEntity.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get surname;
  @override
  String get position;
  @override
  String get code;
  @override
  @JsonKey(ignore: true)
  _$$_EmployeeEntityCopyWith<_$_EmployeeEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

HallEntity _$HallEntityFromJson(Map<String, dynamic> json) {
  return _HallEntity.fromJson(json);
}

/// @nodoc
mixin _$HallEntity {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get size => throw _privateConstructorUsedError;
  List<TableEntity> get tables => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HallEntityCopyWith<HallEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HallEntityCopyWith<$Res> {
  factory $HallEntityCopyWith(
          HallEntity value, $Res Function(HallEntity) then) =
      _$HallEntityCopyWithImpl<$Res, HallEntity>;
  @useResult
  $Res call({int id, String name, int size, List<TableEntity> tables});
}

/// @nodoc
class _$HallEntityCopyWithImpl<$Res, $Val extends HallEntity>
    implements $HallEntityCopyWith<$Res> {
  _$HallEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? size = null,
    Object? tables = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int,
      tables: null == tables
          ? _value.tables
          : tables // ignore: cast_nullable_to_non_nullable
              as List<TableEntity>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_HallEntityCopyWith<$Res>
    implements $HallEntityCopyWith<$Res> {
  factory _$$_HallEntityCopyWith(
          _$_HallEntity value, $Res Function(_$_HallEntity) then) =
      __$$_HallEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, int size, List<TableEntity> tables});
}

/// @nodoc
class __$$_HallEntityCopyWithImpl<$Res>
    extends _$HallEntityCopyWithImpl<$Res, _$_HallEntity>
    implements _$$_HallEntityCopyWith<$Res> {
  __$$_HallEntityCopyWithImpl(
      _$_HallEntity _value, $Res Function(_$_HallEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? size = null,
    Object? tables = null,
  }) {
    return _then(_$_HallEntity(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int,
      tables: null == tables
          ? _value._tables
          : tables // ignore: cast_nullable_to_non_nullable
              as List<TableEntity>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_HallEntity implements _HallEntity {
  const _$_HallEntity(
      {required this.id,
      required this.name,
      required this.size,
      required final List<TableEntity> tables})
      : _tables = tables;

  factory _$_HallEntity.fromJson(Map<String, dynamic> json) =>
      _$$_HallEntityFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final int size;
  final List<TableEntity> _tables;
  @override
  List<TableEntity> get tables {
    if (_tables is EqualUnmodifiableListView) return _tables;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tables);
  }

  @override
  String toString() {
    return 'HallEntity(id: $id, name: $name, size: $size, tables: $tables)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HallEntity &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.size, size) || other.size == size) &&
            const DeepCollectionEquality().equals(other._tables, _tables));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, size,
      const DeepCollectionEquality().hash(_tables));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HallEntityCopyWith<_$_HallEntity> get copyWith =>
      __$$_HallEntityCopyWithImpl<_$_HallEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HallEntityToJson(
      this,
    );
  }
}

abstract class _HallEntity implements HallEntity {
  const factory _HallEntity(
      {required final int id,
      required final String name,
      required final int size,
      required final List<TableEntity> tables}) = _$_HallEntity;

  factory _HallEntity.fromJson(Map<String, dynamic> json) =
      _$_HallEntity.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  int get size;
  @override
  List<TableEntity> get tables;
  @override
  @JsonKey(ignore: true)
  _$$_HallEntityCopyWith<_$_HallEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

ModifierEntity _$ModifierEntityFromJson(Map<String, dynamic> json) {
  return _ModifierEntity.fromJson(json);
}

/// @nodoc
mixin _$ModifierEntity {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  int? get minimum => throw _privateConstructorUsedError;
  int? get maximum => throw _privateConstructorUsedError;
  double? get price => throw _privateConstructorUsedError;
  List<ModifierEntity>? get modifiers => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ModifierEntityCopyWith<ModifierEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ModifierEntityCopyWith<$Res> {
  factory $ModifierEntityCopyWith(
          ModifierEntity value, $Res Function(ModifierEntity) then) =
      _$ModifierEntityCopyWithImpl<$Res, ModifierEntity>;
  @useResult
  $Res call(
      {int id,
      String name,
      String? image,
      int? minimum,
      int? maximum,
      double? price,
      List<ModifierEntity>? modifiers});
}

/// @nodoc
class _$ModifierEntityCopyWithImpl<$Res, $Val extends ModifierEntity>
    implements $ModifierEntityCopyWith<$Res> {
  _$ModifierEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? image = freezed,
    Object? minimum = freezed,
    Object? maximum = freezed,
    Object? price = freezed,
    Object? modifiers = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      minimum: freezed == minimum
          ? _value.minimum
          : minimum // ignore: cast_nullable_to_non_nullable
              as int?,
      maximum: freezed == maximum
          ? _value.maximum
          : maximum // ignore: cast_nullable_to_non_nullable
              as int?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      modifiers: freezed == modifiers
          ? _value.modifiers
          : modifiers // ignore: cast_nullable_to_non_nullable
              as List<ModifierEntity>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ModifierEntityCopyWith<$Res>
    implements $ModifierEntityCopyWith<$Res> {
  factory _$$_ModifierEntityCopyWith(
          _$_ModifierEntity value, $Res Function(_$_ModifierEntity) then) =
      __$$_ModifierEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String? image,
      int? minimum,
      int? maximum,
      double? price,
      List<ModifierEntity>? modifiers});
}

/// @nodoc
class __$$_ModifierEntityCopyWithImpl<$Res>
    extends _$ModifierEntityCopyWithImpl<$Res, _$_ModifierEntity>
    implements _$$_ModifierEntityCopyWith<$Res> {
  __$$_ModifierEntityCopyWithImpl(
      _$_ModifierEntity _value, $Res Function(_$_ModifierEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? image = freezed,
    Object? minimum = freezed,
    Object? maximum = freezed,
    Object? price = freezed,
    Object? modifiers = freezed,
  }) {
    return _then(_$_ModifierEntity(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      minimum: freezed == minimum
          ? _value.minimum
          : minimum // ignore: cast_nullable_to_non_nullable
              as int?,
      maximum: freezed == maximum
          ? _value.maximum
          : maximum // ignore: cast_nullable_to_non_nullable
              as int?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      modifiers: freezed == modifiers
          ? _value._modifiers
          : modifiers // ignore: cast_nullable_to_non_nullable
              as List<ModifierEntity>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ModifierEntity implements _ModifierEntity {
  const _$_ModifierEntity(
      {required this.id,
      required this.name,
      this.image,
      this.minimum,
      this.maximum,
      this.price,
      final List<ModifierEntity>? modifiers})
      : _modifiers = modifiers;

  factory _$_ModifierEntity.fromJson(Map<String, dynamic> json) =>
      _$$_ModifierEntityFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String? image;
  @override
  final int? minimum;
  @override
  final int? maximum;
  @override
  final double? price;
  final List<ModifierEntity>? _modifiers;
  @override
  List<ModifierEntity>? get modifiers {
    final value = _modifiers;
    if (value == null) return null;
    if (_modifiers is EqualUnmodifiableListView) return _modifiers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ModifierEntity(id: $id, name: $name, image: $image, minimum: $minimum, maximum: $maximum, price: $price, modifiers: $modifiers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ModifierEntity &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.minimum, minimum) || other.minimum == minimum) &&
            (identical(other.maximum, maximum) || other.maximum == maximum) &&
            (identical(other.price, price) || other.price == price) &&
            const DeepCollectionEquality()
                .equals(other._modifiers, _modifiers));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, image, minimum,
      maximum, price, const DeepCollectionEquality().hash(_modifiers));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ModifierEntityCopyWith<_$_ModifierEntity> get copyWith =>
      __$$_ModifierEntityCopyWithImpl<_$_ModifierEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ModifierEntityToJson(
      this,
    );
  }
}

abstract class _ModifierEntity implements ModifierEntity {
  const factory _ModifierEntity(
      {required final int id,
      required final String name,
      final String? image,
      final int? minimum,
      final int? maximum,
      final double? price,
      final List<ModifierEntity>? modifiers}) = _$_ModifierEntity;

  factory _ModifierEntity.fromJson(Map<String, dynamic> json) =
      _$_ModifierEntity.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String? get image;
  @override
  int? get minimum;
  @override
  int? get maximum;
  @override
  double? get price;
  @override
  List<ModifierEntity>? get modifiers;
  @override
  @JsonKey(ignore: true)
  _$$_ModifierEntityCopyWith<_$_ModifierEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

OrderEntity _$OrderEntityFromJson(Map<String, dynamic> json) {
  return _OrderEntity.fromJson(json);
}

/// @nodoc
mixin _$OrderEntity {
  List<DishEntity> get dishes => throw _privateConstructorUsedError;
  int get orderId => throw _privateConstructorUsedError;
  int get cashierId => throw _privateConstructorUsedError;
  double get totalPrice => throw _privateConstructorUsedError;
  DateTime? get checkTime => throw _privateConstructorUsedError;
  int? get tableId => throw _privateConstructorUsedError;
  int? get waiterId => throw _privateConstructorUsedError;
  int? get guestId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderEntityCopyWith<OrderEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderEntityCopyWith<$Res> {
  factory $OrderEntityCopyWith(
          OrderEntity value, $Res Function(OrderEntity) then) =
      _$OrderEntityCopyWithImpl<$Res, OrderEntity>;
  @useResult
  $Res call(
      {List<DishEntity> dishes,
      int orderId,
      int cashierId,
      double totalPrice,
      DateTime? checkTime,
      int? tableId,
      int? waiterId,
      int? guestId});
}

/// @nodoc
class _$OrderEntityCopyWithImpl<$Res, $Val extends OrderEntity>
    implements $OrderEntityCopyWith<$Res> {
  _$OrderEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dishes = null,
    Object? orderId = null,
    Object? cashierId = null,
    Object? totalPrice = null,
    Object? checkTime = freezed,
    Object? tableId = freezed,
    Object? waiterId = freezed,
    Object? guestId = freezed,
  }) {
    return _then(_value.copyWith(
      dishes: null == dishes
          ? _value.dishes
          : dishes // ignore: cast_nullable_to_non_nullable
              as List<DishEntity>,
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as int,
      cashierId: null == cashierId
          ? _value.cashierId
          : cashierId // ignore: cast_nullable_to_non_nullable
              as int,
      totalPrice: null == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as double,
      checkTime: freezed == checkTime
          ? _value.checkTime
          : checkTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      tableId: freezed == tableId
          ? _value.tableId
          : tableId // ignore: cast_nullable_to_non_nullable
              as int?,
      waiterId: freezed == waiterId
          ? _value.waiterId
          : waiterId // ignore: cast_nullable_to_non_nullable
              as int?,
      guestId: freezed == guestId
          ? _value.guestId
          : guestId // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OrderEntityCopyWith<$Res>
    implements $OrderEntityCopyWith<$Res> {
  factory _$$_OrderEntityCopyWith(
          _$_OrderEntity value, $Res Function(_$_OrderEntity) then) =
      __$$_OrderEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<DishEntity> dishes,
      int orderId,
      int cashierId,
      double totalPrice,
      DateTime? checkTime,
      int? tableId,
      int? waiterId,
      int? guestId});
}

/// @nodoc
class __$$_OrderEntityCopyWithImpl<$Res>
    extends _$OrderEntityCopyWithImpl<$Res, _$_OrderEntity>
    implements _$$_OrderEntityCopyWith<$Res> {
  __$$_OrderEntityCopyWithImpl(
      _$_OrderEntity _value, $Res Function(_$_OrderEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dishes = null,
    Object? orderId = null,
    Object? cashierId = null,
    Object? totalPrice = null,
    Object? checkTime = freezed,
    Object? tableId = freezed,
    Object? waiterId = freezed,
    Object? guestId = freezed,
  }) {
    return _then(_$_OrderEntity(
      dishes: null == dishes
          ? _value._dishes
          : dishes // ignore: cast_nullable_to_non_nullable
              as List<DishEntity>,
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as int,
      cashierId: null == cashierId
          ? _value.cashierId
          : cashierId // ignore: cast_nullable_to_non_nullable
              as int,
      totalPrice: null == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as double,
      checkTime: freezed == checkTime
          ? _value.checkTime
          : checkTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      tableId: freezed == tableId
          ? _value.tableId
          : tableId // ignore: cast_nullable_to_non_nullable
              as int?,
      waiterId: freezed == waiterId
          ? _value.waiterId
          : waiterId // ignore: cast_nullable_to_non_nullable
              as int?,
      guestId: freezed == guestId
          ? _value.guestId
          : guestId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OrderEntity implements _OrderEntity {
  const _$_OrderEntity(
      {required final List<DishEntity> dishes,
      required this.orderId,
      required this.cashierId,
      required this.totalPrice,
      this.checkTime,
      this.tableId,
      this.waiterId,
      this.guestId})
      : _dishes = dishes;

  factory _$_OrderEntity.fromJson(Map<String, dynamic> json) =>
      _$$_OrderEntityFromJson(json);

  final List<DishEntity> _dishes;
  @override
  List<DishEntity> get dishes {
    if (_dishes is EqualUnmodifiableListView) return _dishes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dishes);
  }

  @override
  final int orderId;
  @override
  final int cashierId;
  @override
  final double totalPrice;
  @override
  final DateTime? checkTime;
  @override
  final int? tableId;
  @override
  final int? waiterId;
  @override
  final int? guestId;

  @override
  String toString() {
    return 'OrderEntity(dishes: $dishes, orderId: $orderId, cashierId: $cashierId, totalPrice: $totalPrice, checkTime: $checkTime, tableId: $tableId, waiterId: $waiterId, guestId: $guestId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OrderEntity &&
            const DeepCollectionEquality().equals(other._dishes, _dishes) &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.cashierId, cashierId) ||
                other.cashierId == cashierId) &&
            (identical(other.totalPrice, totalPrice) ||
                other.totalPrice == totalPrice) &&
            (identical(other.checkTime, checkTime) ||
                other.checkTime == checkTime) &&
            (identical(other.tableId, tableId) || other.tableId == tableId) &&
            (identical(other.waiterId, waiterId) ||
                other.waiterId == waiterId) &&
            (identical(other.guestId, guestId) || other.guestId == guestId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_dishes),
      orderId,
      cashierId,
      totalPrice,
      checkTime,
      tableId,
      waiterId,
      guestId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OrderEntityCopyWith<_$_OrderEntity> get copyWith =>
      __$$_OrderEntityCopyWithImpl<_$_OrderEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OrderEntityToJson(
      this,
    );
  }
}

abstract class _OrderEntity implements OrderEntity {
  const factory _OrderEntity(
      {required final List<DishEntity> dishes,
      required final int orderId,
      required final int cashierId,
      required final double totalPrice,
      final DateTime? checkTime,
      final int? tableId,
      final int? waiterId,
      final int? guestId}) = _$_OrderEntity;

  factory _OrderEntity.fromJson(Map<String, dynamic> json) =
      _$_OrderEntity.fromJson;

  @override
  List<DishEntity> get dishes;
  @override
  int get orderId;
  @override
  int get cashierId;
  @override
  double get totalPrice;
  @override
  DateTime? get checkTime;
  @override
  int? get tableId;
  @override
  int? get waiterId;
  @override
  int? get guestId;
  @override
  @JsonKey(ignore: true)
  _$$_OrderEntityCopyWith<_$_OrderEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

PointToken _$PointTokenFromJson(Map<String, dynamic> json) {
  return _PointToken.fromJson(json);
}

/// @nodoc
mixin _$PointToken {
  String get text => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PointTokenCopyWith<PointToken> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PointTokenCopyWith<$Res> {
  factory $PointTokenCopyWith(
          PointToken value, $Res Function(PointToken) then) =
      _$PointTokenCopyWithImpl<$Res, PointToken>;
  @useResult
  $Res call({String text});
}

/// @nodoc
class _$PointTokenCopyWithImpl<$Res, $Val extends PointToken>
    implements $PointTokenCopyWith<$Res> {
  _$PointTokenCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
  }) {
    return _then(_value.copyWith(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PointTokenCopyWith<$Res>
    implements $PointTokenCopyWith<$Res> {
  factory _$$_PointTokenCopyWith(
          _$_PointToken value, $Res Function(_$_PointToken) then) =
      __$$_PointTokenCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String text});
}

/// @nodoc
class __$$_PointTokenCopyWithImpl<$Res>
    extends _$PointTokenCopyWithImpl<$Res, _$_PointToken>
    implements _$$_PointTokenCopyWith<$Res> {
  __$$_PointTokenCopyWithImpl(
      _$_PointToken _value, $Res Function(_$_PointToken) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
  }) {
    return _then(_$_PointToken(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PointToken implements _PointToken {
  const _$_PointToken({required this.text});

  factory _$_PointToken.fromJson(Map<String, dynamic> json) =>
      _$$_PointTokenFromJson(json);

  @override
  final String text;

  @override
  String toString() {
    return 'PointToken(text: $text)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PointToken &&
            (identical(other.text, text) || other.text == text));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, text);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PointTokenCopyWith<_$_PointToken> get copyWith =>
      __$$_PointTokenCopyWithImpl<_$_PointToken>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PointTokenToJson(
      this,
    );
  }
}

abstract class _PointToken implements PointToken {
  const factory _PointToken({required final String text}) = _$_PointToken;

  factory _PointToken.fromJson(Map<String, dynamic> json) =
      _$_PointToken.fromJson;

  @override
  String get text;
  @override
  @JsonKey(ignore: true)
  _$$_PointTokenCopyWith<_$_PointToken> get copyWith =>
      throw _privateConstructorUsedError;
}

PointEntity _$PointEntityFromJson(Map<String, dynamic> json) {
  return _PointEntity.fromJson(json);
}

/// @nodoc
mixin _$PointEntity {
  List<EmployeeEntity> get employees => throw _privateConstructorUsedError;
  List<HallEntity> get halls => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PointEntityCopyWith<PointEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PointEntityCopyWith<$Res> {
  factory $PointEntityCopyWith(
          PointEntity value, $Res Function(PointEntity) then) =
      _$PointEntityCopyWithImpl<$Res, PointEntity>;
  @useResult
  $Res call({List<EmployeeEntity> employees, List<HallEntity> halls});
}

/// @nodoc
class _$PointEntityCopyWithImpl<$Res, $Val extends PointEntity>
    implements $PointEntityCopyWith<$Res> {
  _$PointEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? employees = null,
    Object? halls = null,
  }) {
    return _then(_value.copyWith(
      employees: null == employees
          ? _value.employees
          : employees // ignore: cast_nullable_to_non_nullable
              as List<EmployeeEntity>,
      halls: null == halls
          ? _value.halls
          : halls // ignore: cast_nullable_to_non_nullable
              as List<HallEntity>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PointEntityCopyWith<$Res>
    implements $PointEntityCopyWith<$Res> {
  factory _$$_PointEntityCopyWith(
          _$_PointEntity value, $Res Function(_$_PointEntity) then) =
      __$$_PointEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<EmployeeEntity> employees, List<HallEntity> halls});
}

/// @nodoc
class __$$_PointEntityCopyWithImpl<$Res>
    extends _$PointEntityCopyWithImpl<$Res, _$_PointEntity>
    implements _$$_PointEntityCopyWith<$Res> {
  __$$_PointEntityCopyWithImpl(
      _$_PointEntity _value, $Res Function(_$_PointEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? employees = null,
    Object? halls = null,
  }) {
    return _then(_$_PointEntity(
      employees: null == employees
          ? _value._employees
          : employees // ignore: cast_nullable_to_non_nullable
              as List<EmployeeEntity>,
      halls: null == halls
          ? _value._halls
          : halls // ignore: cast_nullable_to_non_nullable
              as List<HallEntity>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PointEntity implements _PointEntity {
  const _$_PointEntity(
      {required final List<EmployeeEntity> employees,
      required final List<HallEntity> halls})
      : _employees = employees,
        _halls = halls;

  factory _$_PointEntity.fromJson(Map<String, dynamic> json) =>
      _$$_PointEntityFromJson(json);

  final List<EmployeeEntity> _employees;
  @override
  List<EmployeeEntity> get employees {
    if (_employees is EqualUnmodifiableListView) return _employees;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_employees);
  }

  final List<HallEntity> _halls;
  @override
  List<HallEntity> get halls {
    if (_halls is EqualUnmodifiableListView) return _halls;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_halls);
  }

  @override
  String toString() {
    return 'PointEntity(employees: $employees, halls: $halls)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PointEntity &&
            const DeepCollectionEquality()
                .equals(other._employees, _employees) &&
            const DeepCollectionEquality().equals(other._halls, _halls));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_employees),
      const DeepCollectionEquality().hash(_halls));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PointEntityCopyWith<_$_PointEntity> get copyWith =>
      __$$_PointEntityCopyWithImpl<_$_PointEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PointEntityToJson(
      this,
    );
  }
}

abstract class _PointEntity implements PointEntity {
  const factory _PointEntity(
      {required final List<EmployeeEntity> employees,
      required final List<HallEntity> halls}) = _$_PointEntity;

  factory _PointEntity.fromJson(Map<String, dynamic> json) =
      _$_PointEntity.fromJson;

  @override
  List<EmployeeEntity> get employees;
  @override
  List<HallEntity> get halls;
  @override
  @JsonKey(ignore: true)
  _$$_PointEntityCopyWith<_$_PointEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

TableEntity _$TableEntityFromJson(Map<String, dynamic> json) {
  return _TableEntity.fromJson(json);
}

/// @nodoc
mixin _$TableEntity {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  TableType get type => throw _privateConstructorUsedError;
  int get height => throw _privateConstructorUsedError;
  int get width => throw _privateConstructorUsedError;
  int get angle => throw _privateConstructorUsedError;
  GraphPointEntity get point => throw _privateConstructorUsedError;
  List<OrderEntity> get orders => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TableEntityCopyWith<TableEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TableEntityCopyWith<$Res> {
  factory $TableEntityCopyWith(
          TableEntity value, $Res Function(TableEntity) then) =
      _$TableEntityCopyWithImpl<$Res, TableEntity>;
  @useResult
  $Res call(
      {int id,
      String name,
      TableType type,
      int height,
      int width,
      int angle,
      GraphPointEntity point,
      List<OrderEntity> orders});

  $GraphPointEntityCopyWith<$Res> get point;
}

/// @nodoc
class _$TableEntityCopyWithImpl<$Res, $Val extends TableEntity>
    implements $TableEntityCopyWith<$Res> {
  _$TableEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? type = null,
    Object? height = null,
    Object? width = null,
    Object? angle = null,
    Object? point = null,
    Object? orders = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as TableType,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int,
      angle: null == angle
          ? _value.angle
          : angle // ignore: cast_nullable_to_non_nullable
              as int,
      point: null == point
          ? _value.point
          : point // ignore: cast_nullable_to_non_nullable
              as GraphPointEntity,
      orders: null == orders
          ? _value.orders
          : orders // ignore: cast_nullable_to_non_nullable
              as List<OrderEntity>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $GraphPointEntityCopyWith<$Res> get point {
    return $GraphPointEntityCopyWith<$Res>(_value.point, (value) {
      return _then(_value.copyWith(point: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_TableEntityCopyWith<$Res>
    implements $TableEntityCopyWith<$Res> {
  factory _$$_TableEntityCopyWith(
          _$_TableEntity value, $Res Function(_$_TableEntity) then) =
      __$$_TableEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      TableType type,
      int height,
      int width,
      int angle,
      GraphPointEntity point,
      List<OrderEntity> orders});

  @override
  $GraphPointEntityCopyWith<$Res> get point;
}

/// @nodoc
class __$$_TableEntityCopyWithImpl<$Res>
    extends _$TableEntityCopyWithImpl<$Res, _$_TableEntity>
    implements _$$_TableEntityCopyWith<$Res> {
  __$$_TableEntityCopyWithImpl(
      _$_TableEntity _value, $Res Function(_$_TableEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? type = null,
    Object? height = null,
    Object? width = null,
    Object? angle = null,
    Object? point = null,
    Object? orders = null,
  }) {
    return _then(_$_TableEntity(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as TableType,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int,
      angle: null == angle
          ? _value.angle
          : angle // ignore: cast_nullable_to_non_nullable
              as int,
      point: null == point
          ? _value.point
          : point // ignore: cast_nullable_to_non_nullable
              as GraphPointEntity,
      orders: null == orders
          ? _value._orders
          : orders // ignore: cast_nullable_to_non_nullable
              as List<OrderEntity>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TableEntity implements _TableEntity {
  const _$_TableEntity(
      {required this.id,
      required this.name,
      required this.type,
      required this.height,
      required this.width,
      required this.angle,
      required this.point,
      final List<OrderEntity> orders = const []})
      : _orders = orders;

  factory _$_TableEntity.fromJson(Map<String, dynamic> json) =>
      _$$_TableEntityFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final TableType type;
  @override
  final int height;
  @override
  final int width;
  @override
  final int angle;
  @override
  final GraphPointEntity point;
  final List<OrderEntity> _orders;
  @override
  @JsonKey()
  List<OrderEntity> get orders {
    if (_orders is EqualUnmodifiableListView) return _orders;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_orders);
  }

  @override
  String toString() {
    return 'TableEntity(id: $id, name: $name, type: $type, height: $height, width: $width, angle: $angle, point: $point, orders: $orders)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TableEntity &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.angle, angle) || other.angle == angle) &&
            (identical(other.point, point) || other.point == point) &&
            const DeepCollectionEquality().equals(other._orders, _orders));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, type, height, width,
      angle, point, const DeepCollectionEquality().hash(_orders));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TableEntityCopyWith<_$_TableEntity> get copyWith =>
      __$$_TableEntityCopyWithImpl<_$_TableEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TableEntityToJson(
      this,
    );
  }
}

abstract class _TableEntity implements TableEntity {
  const factory _TableEntity(
      {required final int id,
      required final String name,
      required final TableType type,
      required final int height,
      required final int width,
      required final int angle,
      required final GraphPointEntity point,
      final List<OrderEntity> orders}) = _$_TableEntity;

  factory _TableEntity.fromJson(Map<String, dynamic> json) =
      _$_TableEntity.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  TableType get type;
  @override
  int get height;
  @override
  int get width;
  @override
  int get angle;
  @override
  GraphPointEntity get point;
  @override
  List<OrderEntity> get orders;
  @override
  @JsonKey(ignore: true)
  _$$_TableEntityCopyWith<_$_TableEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

GraphPointEntity _$GraphPointEntityFromJson(Map<String, dynamic> json) {
  return _GraphPointEntity.fromJson(json);
}

/// @nodoc
mixin _$GraphPointEntity {
  int get x => throw _privateConstructorUsedError;
  int get y => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GraphPointEntityCopyWith<GraphPointEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GraphPointEntityCopyWith<$Res> {
  factory $GraphPointEntityCopyWith(
          GraphPointEntity value, $Res Function(GraphPointEntity) then) =
      _$GraphPointEntityCopyWithImpl<$Res, GraphPointEntity>;
  @useResult
  $Res call({int x, int y});
}

/// @nodoc
class _$GraphPointEntityCopyWithImpl<$Res, $Val extends GraphPointEntity>
    implements $GraphPointEntityCopyWith<$Res> {
  _$GraphPointEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? x = null,
    Object? y = null,
  }) {
    return _then(_value.copyWith(
      x: null == x
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as int,
      y: null == y
          ? _value.y
          : y // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GraphPointEntityCopyWith<$Res>
    implements $GraphPointEntityCopyWith<$Res> {
  factory _$$_GraphPointEntityCopyWith(
          _$_GraphPointEntity value, $Res Function(_$_GraphPointEntity) then) =
      __$$_GraphPointEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int x, int y});
}

/// @nodoc
class __$$_GraphPointEntityCopyWithImpl<$Res>
    extends _$GraphPointEntityCopyWithImpl<$Res, _$_GraphPointEntity>
    implements _$$_GraphPointEntityCopyWith<$Res> {
  __$$_GraphPointEntityCopyWithImpl(
      _$_GraphPointEntity _value, $Res Function(_$_GraphPointEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? x = null,
    Object? y = null,
  }) {
    return _then(_$_GraphPointEntity(
      x: null == x
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as int,
      y: null == y
          ? _value.y
          : y // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GraphPointEntity implements _GraphPointEntity {
  const _$_GraphPointEntity({required this.x, required this.y});

  factory _$_GraphPointEntity.fromJson(Map<String, dynamic> json) =>
      _$$_GraphPointEntityFromJson(json);

  @override
  final int x;
  @override
  final int y;

  @override
  String toString() {
    return 'GraphPointEntity(x: $x, y: $y)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GraphPointEntity &&
            (identical(other.x, x) || other.x == x) &&
            (identical(other.y, y) || other.y == y));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, x, y);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GraphPointEntityCopyWith<_$_GraphPointEntity> get copyWith =>
      __$$_GraphPointEntityCopyWithImpl<_$_GraphPointEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GraphPointEntityToJson(
      this,
    );
  }
}

abstract class _GraphPointEntity implements GraphPointEntity {
  const factory _GraphPointEntity(
      {required final int x, required final int y}) = _$_GraphPointEntity;

  factory _GraphPointEntity.fromJson(Map<String, dynamic> json) =
      _$_GraphPointEntity.fromJson;

  @override
  int get x;
  @override
  int get y;
  @override
  @JsonKey(ignore: true)
  _$$_GraphPointEntityCopyWith<_$_GraphPointEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
