// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'entities.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CloudToken _$$_CloudTokenFromJson(Map<String, dynamic> json) =>
    _$_CloudToken(
      text: json['text'] as String,
    );

Map<String, dynamic> _$$_CloudTokenToJson(_$_CloudToken instance) =>
    <String, dynamic>{
      'text': instance.text,
    };

_$_DishEntity _$$_DishEntityFromJson(Map<String, dynamic> json) =>
    _$_DishEntity(
      id: json['id'] as int,
      name: json['name'] as String,
      modifiers: (json['modifiers'] as List<dynamic>?)
          ?.map((e) => ModifierEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      dishes: (json['dishes'] as List<dynamic>?)
          ?.map((e) => DishEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      image: json['image'] as String?,
      price: (json['price'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_DishEntityToJson(_$_DishEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'modifiers': instance.modifiers,
      'dishes': instance.dishes,
      'image': instance.image,
      'price': instance.price,
    };

_$_EmployeeEntity _$$_EmployeeEntityFromJson(Map<String, dynamic> json) =>
    _$_EmployeeEntity(
      id: json['id'] as int,
      name: json['name'] as String,
      surname: json['surname'] as String,
      position: json['position'] as String,
      code: json['code'] as String,
    );

Map<String, dynamic> _$$_EmployeeEntityToJson(_$_EmployeeEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'surname': instance.surname,
      'position': instance.position,
      'code': instance.code,
    };

_$_HallEntity _$$_HallEntityFromJson(Map<String, dynamic> json) =>
    _$_HallEntity(
      id: json['id'] as int,
      name: json['name'] as String,
      size: json['size'] as int,
      tables: (json['tables'] as List<dynamic>)
          .map((e) => TableEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_HallEntityToJson(_$_HallEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'size': instance.size,
      'tables': instance.tables,
    };

_$_ModifierEntity _$$_ModifierEntityFromJson(Map<String, dynamic> json) =>
    _$_ModifierEntity(
      id: json['id'] as int,
      name: json['name'] as String,
      image: json['image'] as String?,
      minimum: json['minimum'] as int?,
      maximum: json['maximum'] as int?,
      price: (json['price'] as num?)?.toDouble(),
      modifiers: (json['modifiers'] as List<dynamic>?)
          ?.map((e) => ModifierEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ModifierEntityToJson(_$_ModifierEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image': instance.image,
      'minimum': instance.minimum,
      'maximum': instance.maximum,
      'price': instance.price,
      'modifiers': instance.modifiers,
    };

_$_OrderEntity _$$_OrderEntityFromJson(Map<String, dynamic> json) =>
    _$_OrderEntity(
      dishes: (json['dishes'] as List<dynamic>)
          .map((e) => DishEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      orderId: json['orderId'] as int,
      cashierId: json['cashierId'] as int,
      totalPrice: (json['totalPrice'] as num).toDouble(),
      checkTime: json['checkTime'] == null
          ? null
          : DateTime.parse(json['checkTime'] as String),
      tableId: json['tableId'] as int?,
      waiterId: json['waiterId'] as int?,
      guestId: json['guestId'] as int?,
    );

Map<String, dynamic> _$$_OrderEntityToJson(_$_OrderEntity instance) =>
    <String, dynamic>{
      'dishes': instance.dishes,
      'orderId': instance.orderId,
      'cashierId': instance.cashierId,
      'totalPrice': instance.totalPrice,
      'checkTime': instance.checkTime?.toIso8601String(),
      'tableId': instance.tableId,
      'waiterId': instance.waiterId,
      'guestId': instance.guestId,
    };

_$_PointToken _$$_PointTokenFromJson(Map<String, dynamic> json) =>
    _$_PointToken(
      text: json['text'] as String,
    );

Map<String, dynamic> _$$_PointTokenToJson(_$_PointToken instance) =>
    <String, dynamic>{
      'text': instance.text,
    };

_$_PointEntity _$$_PointEntityFromJson(Map<String, dynamic> json) =>
    _$_PointEntity(
      employees: (json['employees'] as List<dynamic>)
          .map((e) => EmployeeEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      halls: (json['halls'] as List<dynamic>)
          .map((e) => HallEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_PointEntityToJson(_$_PointEntity instance) =>
    <String, dynamic>{
      'employees': instance.employees,
      'halls': instance.halls,
    };

_$_TableEntity _$$_TableEntityFromJson(Map<String, dynamic> json) =>
    _$_TableEntity(
      id: json['id'] as int,
      name: json['name'] as String,
      type: $enumDecode(_$TableTypeEnumMap, json['type']),
      height: json['height'] as int,
      width: json['width'] as int,
      angle: json['angle'] as int,
      point: GraphPointEntity.fromJson(json['point'] as Map<String, dynamic>),
      orders: (json['orders'] as List<dynamic>?)
              ?.map((e) => OrderEntity.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_TableEntityToJson(_$_TableEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'type': _$TableTypeEnumMap[instance.type]!,
      'height': instance.height,
      'width': instance.width,
      'angle': instance.angle,
      'point': instance.point,
      'orders': instance.orders,
    };

const _$TableTypeEnumMap = {
  TableType.rectangle: 'rectangle',
  TableType.circle: 'circle',
};

_$_GraphPointEntity _$$_GraphPointEntityFromJson(Map<String, dynamic> json) =>
    _$_GraphPointEntity(
      x: json['x'] as int,
      y: json['y'] as int,
    );

Map<String, dynamic> _$$_GraphPointEntityToJson(_$_GraphPointEntity instance) =>
    <String, dynamic>{
      'x': instance.x,
      'y': instance.y,
    };
