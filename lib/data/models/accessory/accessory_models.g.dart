// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'accessory_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AccessoryAddModel _$AccessoryAddModelFromJson(Map<String, dynamic> json) =>
    _AccessoryAddModel(
      fromUserId: (json['fromUserId'] as num).toInt(),
      accessoryId: (json['accessoryId'] as num).toInt(),
      quantity: json['quantity'] as num,
      unit: json['unit'] as String,
    );

Map<String, dynamic> _$AccessoryAddModelToJson(_AccessoryAddModel instance) =>
    <String, dynamic>{
      'fromUserId': instance.fromUserId,
      'accessoryId': instance.accessoryId,
      'quantity': instance.quantity,
      'unit': instance.unit,
    };

_AccessoryEntryModel _$AccessoryEntryModelFromJson(Map<String, dynamic> json) =>
    _AccessoryEntryModel(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
    );

Map<String, dynamic> _$AccessoryEntryModelToJson(
  _AccessoryEntryModel instance,
) => <String, dynamic>{'id': instance.id, 'title': instance.title};

_AccessoryTypeModel _$AccessoryTypeModelFromJson(Map<String, dynamic> json) =>
    _AccessoryTypeModel(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      quantity: json['quantity'] as num,
    );

Map<String, dynamic> _$AccessoryTypeModelToJson(_AccessoryTypeModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'quantity': instance.quantity,
    };

_AccessoryTypeCreateModel _$AccessoryTypeCreateModelFromJson(
  Map<String, dynamic> json,
) => _AccessoryTypeCreateModel(title: json['title'] as String);

Map<String, dynamic> _$AccessoryTypeCreateModelToJson(
  _AccessoryTypeCreateModel instance,
) => <String, dynamic>{'title': instance.title};

_AccessoryTypeUpdateModel _$AccessoryTypeUpdateModelFromJson(
  Map<String, dynamic> json,
) => _AccessoryTypeUpdateModel(
  id: (json['id'] as num).toInt(),
  title: json['title'] as String,
);

Map<String, dynamic> _$AccessoryTypeUpdateModelToJson(
  _AccessoryTypeUpdateModel instance,
) => <String, dynamic>{'title': instance.title};

_AccessoryModel _$AccessoryModelFromJson(Map<String, dynamic> json) =>
    _AccessoryModel(
      id: (json['id'] as num).toInt(),
      fromUser: json['fromUser'] as String,
      fromUserRole: json['fromUserRole'] as String,
      toUser: json['toUser'] as String,
      toUserRole: json['toUserRole'] as String,
      quantity: json['quantity'] as num,
      unit: json['unit'] as String,
      date: DateTime.parse(json['date'] as String),
      status: json['status'] as String,
    );

Map<String, dynamic> _$AccessoryModelToJson(_AccessoryModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'fromUser': instance.fromUser,
      'fromUserRole': instance.fromUserRole,
      'toUser': instance.toUser,
      'toUserRole': instance.toUserRole,
      'quantity': instance.quantity,
      'unit': instance.unit,
      'date': instance.date.toIso8601String(),
      'status': instance.status,
    };
