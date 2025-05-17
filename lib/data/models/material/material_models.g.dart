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

_MaterialCreateModel _$MaterialCreateModelFromJson(Map<String, dynamic> json) =>
    _MaterialCreateModel(title: json['title'] as String);

Map<String, dynamic> _$MaterialCreateModelToJson(
  _MaterialCreateModel instance,
) => <String, dynamic>{'title': instance.title};

_MaterialUpdateModel _$MaterialUpdateModelFromJson(Map<String, dynamic> json) =>
    _MaterialUpdateModel(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
    );

Map<String, dynamic> _$MaterialUpdateModelToJson(
  _MaterialUpdateModel instance,
) => <String, dynamic>{'title': instance.title};
