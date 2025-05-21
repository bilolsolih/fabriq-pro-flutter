// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'supplier_entry_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SupplierEntryModel _$SupplierEntryModelFromJson(Map<String, dynamic> json) =>
    _SupplierEntryModel(
      id: (json['id'] as num).toInt(),
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
    );

Map<String, dynamic> _$SupplierEntryModelToJson(_SupplierEntryModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
    };
