// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cloud_entities.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LoginEntity _$$_LoginEntityFromJson(Map<String, dynamic> json) =>
    _$_LoginEntity(
      result:
          LoginResultEntity.fromJson(json['result'] as Map<String, dynamic>),
      points: (json['points'] as List<dynamic>)
          .map(
              (e) => PointDescriptionEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_LoginEntityToJson(_$_LoginEntity instance) =>
    <String, dynamic>{
      'result': instance.result,
      'points': instance.points,
    };

_$_ResultEntity _$$_ResultEntityFromJson(Map<String, dynamic> json) =>
    _$_ResultEntity(
      accessToken: json['access_token'] as String,
      tokenType: json['token_type'] as String,
    );

Map<String, dynamic> _$$_ResultEntityToJson(_$_ResultEntity instance) =>
    <String, dynamic>{
      'access_token': instance.accessToken,
      'token_type': instance.tokenType,
    };

_$_PointDescriptionEntity _$$_PointDescriptionEntityFromJson(
        Map<String, dynamic> json) =>
    _$_PointDescriptionEntity(
      id: json['id'] as int,
      name: json['name'] as String,
      country: json['country'] as String,
      city: json['city'] as String,
      adress: json['adress'] as String,
    );

Map<String, dynamic> _$$_PointDescriptionEntityToJson(
        _$_PointDescriptionEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'country': instance.country,
      'city': instance.city,
      'adress': instance.adress,
    };
