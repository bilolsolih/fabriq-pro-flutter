// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'material_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MaterialListModel _$MaterialListModelFromJson(Map<String, dynamic> json) =>
    _MaterialListModel(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      totalInKg: json['totalInKg'] as num,
      totalInMeter: json['totalInMeter'] as num,
      totalInPack: json['totalInPack'] as num,
    );

Map<String, dynamic> _$MaterialListModelToJson(_MaterialListModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'totalInKg': instance.totalInKg,
      'totalInMeter': instance.totalInMeter,
      'totalInPack': instance.totalInPack,
    };

_MaterialTypeCreateModel _$MaterialTypeCreateModelFromJson(
  Map<String, dynamic> json,
) => _MaterialTypeCreateModel(title: json['title'] as String);

Map<String, dynamic> _$MaterialTypeCreateModelToJson(
  _MaterialTypeCreateModel instance,
) => <String, dynamic>{'title': instance.title};

_MaterialTypeUpdateModel _$MaterialTypeUpdateModelFromJson(
  Map<String, dynamic> json,
) => _MaterialTypeUpdateModel(
  id: (json['id'] as num).toInt(),
  title: json['title'] as String,
);

Map<String, dynamic> _$MaterialTypeUpdateModelToJson(
  _MaterialTypeUpdateModel instance,
) => <String, dynamic>{'title': instance.title};

_MaterialEntryModel _$MaterialEntryModelFromJson(Map<String, dynamic> json) =>
    _MaterialEntryModel(
      id: (json['id'] as num).toInt(),
      partyNumber: json['partyNumber'] as String,
      fromUser: json['fromUser'] as String,
      fromUserRole: json['fromUserRole'] as String,
      toUser: json['toUser'] as String,
      toUserRole: json['toUserRole'] as String,
      acceptedUser: json['acceptedUser'] as String,
      acceptedUserRole: json['acceptedUserRole'] as String,
      width: json['width'] as num,
      thickness: json['thickness'] as num,
      hasPatterns: json['hasPatterns'] as bool,
      colorTitle: json['colorTitle'] as String,
      colorHex: json['colorHex'] as String,
      quantity: json['quantity'] as num,
      unit: json['unit'] as String,
      date: DateTime.parse(json['date'] as String),
      status: json['status'] as String,
    );

Map<String, dynamic> _$MaterialEntryModelToJson(_MaterialEntryModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'partyNumber': instance.partyNumber,
      'fromUser': instance.fromUser,
      'fromUserRole': instance.fromUserRole,
      'toUser': instance.toUser,
      'toUserRole': instance.toUserRole,
      'acceptedUser': instance.acceptedUser,
      'acceptedUserRole': instance.acceptedUserRole,
      'width': instance.width,
      'thickness': instance.thickness,
      'hasPatterns': instance.hasPatterns,
      'colorTitle': instance.colorTitle,
      'colorHex': instance.colorHex,
      'quantity': instance.quantity,
      'unit': instance.unit,
      'date': instance.date.toIso8601String(),
      'status': instance.status,
    };
