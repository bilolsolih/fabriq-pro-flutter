// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_model_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ProductModelInfo _$ProductModelInfoFromJson(Map<String, dynamic> json) =>
    _ProductModelInfo(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      colorTitle: json['colorTitle'] as String,
      colorHex: json['colorHex'] as String,
      productType: json['productType'] as String,
    );

Map<String, dynamic> _$ProductModelInfoToJson(_ProductModelInfo instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'colorTitle': instance.colorTitle,
      'colorHex': instance.colorHex,
      'productType': instance.productType,
    };
