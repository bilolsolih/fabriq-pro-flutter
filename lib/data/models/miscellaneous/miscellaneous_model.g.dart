// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'miscellaneous_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Miscellaneous _$MiscellaneousFromJson(Map<String, dynamic> json) =>
    _Miscellaneous(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      model: json['model'] as String,
      detail: json['detail'] as String,
      quantity: json['quantity'] as String,
      date: json['date'] as String,
    );

Map<String, dynamic> _$MiscellaneousToJson(_Miscellaneous instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'model': instance.model,
      'detail': instance.detail,
      'quantity': instance.quantity,
      'date': instance.date,
    };
