// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'client_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Client _$ClientFromJson(Map<String, dynamic> json) => _Client(
  id: (json['id'] as num).toInt(),
  firstName: json['firstName'] as String,
  lastName: json['lastName'] as String,
  address: json['address'] as String,
  phoneNumber: json['phoneNumber'] as String,
  purchasesCount: (json['purchasesCount'] as num).toInt(),
);

Map<String, dynamic> _$ClientToJson(_Client instance) => <String, dynamic>{
  'id': instance.id,
  'firstName': instance.firstName,
  'lastName': instance.lastName,
  'address': instance.address,
  'phoneNumber': instance.phoneNumber,
  'purchasesCount': instance.purchasesCount,
};
