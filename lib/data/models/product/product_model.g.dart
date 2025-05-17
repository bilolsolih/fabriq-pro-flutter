// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Product _$ProductFromJson(Map<String, dynamic> json) => _Product(
  id: (json['id'] as num).toInt(),
  title: json['title'] as String,
  model: json['model'] as String,
  colorTitle: json['colorTitle'] as String,
  colorHex: json['colorHex'] as String,
  quantity: (json['quantity'] as num).toInt(),
);

Map<String, dynamic> _$ProductToJson(_Product instance) => <String, dynamic>{
  'id': instance.id,
  'title': instance.title,
  'model': instance.model,
  'colorTitle': instance.colorTitle,
  'colorHex': instance.colorHex,
  'quantity': instance.quantity,
};
