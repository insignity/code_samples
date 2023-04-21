// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cloud_entities.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LoginEntity _$LoginEntityFromJson(Map<String, dynamic> json) {
  return _LoginEntity.fromJson(json);
}

/// @nodoc
mixin _$LoginEntity {
  LoginResultEntity get result => throw _privateConstructorUsedError;
  List<PointDescriptionEntity> get points => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoginEntityCopyWith<LoginEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginEntityCopyWith<$Res> {
  factory $LoginEntityCopyWith(
          LoginEntity value, $Res Function(LoginEntity) then) =
      _$LoginEntityCopyWithImpl<$Res, LoginEntity>;
  @useResult
  $Res call({LoginResultEntity result, List<PointDescriptionEntity> points});

  $LoginResultEntityCopyWith<$Res> get result;
}

/// @nodoc
class _$LoginEntityCopyWithImpl<$Res, $Val extends LoginEntity>
    implements $LoginEntityCopyWith<$Res> {
  _$LoginEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = null,
    Object? points = null,
  }) {
    return _then(_value.copyWith(
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as LoginResultEntity,
      points: null == points
          ? _value.points
          : points // ignore: cast_nullable_to_non_nullable
              as List<PointDescriptionEntity>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LoginResultEntityCopyWith<$Res> get result {
    return $LoginResultEntityCopyWith<$Res>(_value.result, (value) {
      return _then(_value.copyWith(result: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_LoginEntityCopyWith<$Res>
    implements $LoginEntityCopyWith<$Res> {
  factory _$$_LoginEntityCopyWith(
          _$_LoginEntity value, $Res Function(_$_LoginEntity) then) =
      __$$_LoginEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({LoginResultEntity result, List<PointDescriptionEntity> points});

  @override
  $LoginResultEntityCopyWith<$Res> get result;
}

/// @nodoc
class __$$_LoginEntityCopyWithImpl<$Res>
    extends _$LoginEntityCopyWithImpl<$Res, _$_LoginEntity>
    implements _$$_LoginEntityCopyWith<$Res> {
  __$$_LoginEntityCopyWithImpl(
      _$_LoginEntity _value, $Res Function(_$_LoginEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = null,
    Object? points = null,
  }) {
    return _then(_$_LoginEntity(
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as LoginResultEntity,
      points: null == points
          ? _value._points
          : points // ignore: cast_nullable_to_non_nullable
              as List<PointDescriptionEntity>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LoginEntity implements _LoginEntity {
  const _$_LoginEntity(
      {required this.result,
      required final List<PointDescriptionEntity> points})
      : _points = points;

  factory _$_LoginEntity.fromJson(Map<String, dynamic> json) =>
      _$$_LoginEntityFromJson(json);

  @override
  final LoginResultEntity result;
  final List<PointDescriptionEntity> _points;
  @override
  List<PointDescriptionEntity> get points {
    if (_points is EqualUnmodifiableListView) return _points;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_points);
  }

  @override
  String toString() {
    return 'LoginEntity(result: $result, points: $points)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoginEntity &&
            (identical(other.result, result) || other.result == result) &&
            const DeepCollectionEquality().equals(other._points, _points));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, result, const DeepCollectionEquality().hash(_points));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoginEntityCopyWith<_$_LoginEntity> get copyWith =>
      __$$_LoginEntityCopyWithImpl<_$_LoginEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LoginEntityToJson(
      this,
    );
  }
}

abstract class _LoginEntity implements LoginEntity {
  const factory _LoginEntity(
      {required final LoginResultEntity result,
      required final List<PointDescriptionEntity> points}) = _$_LoginEntity;

  factory _LoginEntity.fromJson(Map<String, dynamic> json) =
      _$_LoginEntity.fromJson;

  @override
  LoginResultEntity get result;
  @override
  List<PointDescriptionEntity> get points;
  @override
  @JsonKey(ignore: true)
  _$$_LoginEntityCopyWith<_$_LoginEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

LoginResultEntity _$LoginResultEntityFromJson(Map<String, dynamic> json) {
  return _ResultEntity.fromJson(json);
}

/// @nodoc
mixin _$LoginResultEntity {
  @JsonKey(name: 'access_token')
  String get accessToken => throw _privateConstructorUsedError;
  @JsonKey(name: 'token_type')
  String get tokenType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoginResultEntityCopyWith<LoginResultEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginResultEntityCopyWith<$Res> {
  factory $LoginResultEntityCopyWith(
          LoginResultEntity value, $Res Function(LoginResultEntity) then) =
      _$LoginResultEntityCopyWithImpl<$Res, LoginResultEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: 'access_token') String accessToken,
      @JsonKey(name: 'token_type') String tokenType});
}

/// @nodoc
class _$LoginResultEntityCopyWithImpl<$Res, $Val extends LoginResultEntity>
    implements $LoginResultEntityCopyWith<$Res> {
  _$LoginResultEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = null,
    Object? tokenType = null,
  }) {
    return _then(_value.copyWith(
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      tokenType: null == tokenType
          ? _value.tokenType
          : tokenType // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ResultEntityCopyWith<$Res>
    implements $LoginResultEntityCopyWith<$Res> {
  factory _$$_ResultEntityCopyWith(
          _$_ResultEntity value, $Res Function(_$_ResultEntity) then) =
      __$$_ResultEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'access_token') String accessToken,
      @JsonKey(name: 'token_type') String tokenType});
}

/// @nodoc
class __$$_ResultEntityCopyWithImpl<$Res>
    extends _$LoginResultEntityCopyWithImpl<$Res, _$_ResultEntity>
    implements _$$_ResultEntityCopyWith<$Res> {
  __$$_ResultEntityCopyWithImpl(
      _$_ResultEntity _value, $Res Function(_$_ResultEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = null,
    Object? tokenType = null,
  }) {
    return _then(_$_ResultEntity(
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      tokenType: null == tokenType
          ? _value.tokenType
          : tokenType // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ResultEntity implements _ResultEntity {
  const _$_ResultEntity(
      {@JsonKey(name: 'access_token') required this.accessToken,
      @JsonKey(name: 'token_type') required this.tokenType});

  factory _$_ResultEntity.fromJson(Map<String, dynamic> json) =>
      _$$_ResultEntityFromJson(json);

  @override
  @JsonKey(name: 'access_token')
  final String accessToken;
  @override
  @JsonKey(name: 'token_type')
  final String tokenType;

  @override
  String toString() {
    return 'LoginResultEntity(accessToken: $accessToken, tokenType: $tokenType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ResultEntity &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken) &&
            (identical(other.tokenType, tokenType) ||
                other.tokenType == tokenType));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, accessToken, tokenType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ResultEntityCopyWith<_$_ResultEntity> get copyWith =>
      __$$_ResultEntityCopyWithImpl<_$_ResultEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ResultEntityToJson(
      this,
    );
  }
}

abstract class _ResultEntity implements LoginResultEntity {
  const factory _ResultEntity(
          {@JsonKey(name: 'access_token') required final String accessToken,
          @JsonKey(name: 'token_type') required final String tokenType}) =
      _$_ResultEntity;

  factory _ResultEntity.fromJson(Map<String, dynamic> json) =
      _$_ResultEntity.fromJson;

  @override
  @JsonKey(name: 'access_token')
  String get accessToken;
  @override
  @JsonKey(name: 'token_type')
  String get tokenType;
  @override
  @JsonKey(ignore: true)
  _$$_ResultEntityCopyWith<_$_ResultEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

PointDescriptionEntity _$PointDescriptionEntityFromJson(
    Map<String, dynamic> json) {
  return _PointDescriptionEntity.fromJson(json);
}

/// @nodoc
mixin _$PointDescriptionEntity {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get country => throw _privateConstructorUsedError;
  String get city => throw _privateConstructorUsedError;
  String get adress => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PointDescriptionEntityCopyWith<PointDescriptionEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PointDescriptionEntityCopyWith<$Res> {
  factory $PointDescriptionEntityCopyWith(PointDescriptionEntity value,
          $Res Function(PointDescriptionEntity) then) =
      _$PointDescriptionEntityCopyWithImpl<$Res, PointDescriptionEntity>;
  @useResult
  $Res call({int id, String name, String country, String city, String adress});
}

/// @nodoc
class _$PointDescriptionEntityCopyWithImpl<$Res,
        $Val extends PointDescriptionEntity>
    implements $PointDescriptionEntityCopyWith<$Res> {
  _$PointDescriptionEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? country = null,
    Object? city = null,
    Object? adress = null,
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
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      adress: null == adress
          ? _value.adress
          : adress // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PointDescriptionEntityCopyWith<$Res>
    implements $PointDescriptionEntityCopyWith<$Res> {
  factory _$$_PointDescriptionEntityCopyWith(_$_PointDescriptionEntity value,
          $Res Function(_$_PointDescriptionEntity) then) =
      __$$_PointDescriptionEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, String country, String city, String adress});
}

/// @nodoc
class __$$_PointDescriptionEntityCopyWithImpl<$Res>
    extends _$PointDescriptionEntityCopyWithImpl<$Res,
        _$_PointDescriptionEntity>
    implements _$$_PointDescriptionEntityCopyWith<$Res> {
  __$$_PointDescriptionEntityCopyWithImpl(_$_PointDescriptionEntity _value,
      $Res Function(_$_PointDescriptionEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? country = null,
    Object? city = null,
    Object? adress = null,
  }) {
    return _then(_$_PointDescriptionEntity(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      adress: null == adress
          ? _value.adress
          : adress // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PointDescriptionEntity implements _PointDescriptionEntity {
  const _$_PointDescriptionEntity(
      {required this.id,
      required this.name,
      required this.country,
      required this.city,
      required this.adress});

  factory _$_PointDescriptionEntity.fromJson(Map<String, dynamic> json) =>
      _$$_PointDescriptionEntityFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String country;
  @override
  final String city;
  @override
  final String adress;

  @override
  String toString() {
    return 'PointDescriptionEntity(id: $id, name: $name, country: $country, city: $city, adress: $adress)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PointDescriptionEntity &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.adress, adress) || other.adress == adress));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, country, city, adress);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PointDescriptionEntityCopyWith<_$_PointDescriptionEntity> get copyWith =>
      __$$_PointDescriptionEntityCopyWithImpl<_$_PointDescriptionEntity>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PointDescriptionEntityToJson(
      this,
    );
  }
}

abstract class _PointDescriptionEntity implements PointDescriptionEntity {
  const factory _PointDescriptionEntity(
      {required final int id,
      required final String name,
      required final String country,
      required final String city,
      required final String adress}) = _$_PointDescriptionEntity;

  factory _PointDescriptionEntity.fromJson(Map<String, dynamic> json) =
      _$_PointDescriptionEntity.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get country;
  @override
  String get city;
  @override
  String get adress;
  @override
  @JsonKey(ignore: true)
  _$$_PointDescriptionEntityCopyWith<_$_PointDescriptionEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
