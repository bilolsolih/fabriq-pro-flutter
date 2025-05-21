// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_User _$UserFromJson(Map<String, dynamic> json) => _User(
  id: (json['id'] as num).toInt(),
  image: json['profilePhoto'] as String?,
  firstName: json['firstName'] as String,
  lastName: json['lastName'] as String,
  role: json['role'] as String,
  phoneNumber: json['phoneNumber'] as String,
  address: json['address'] as String,
);

Map<String, dynamic> _$UserToJson(_User instance) => <String, dynamic>{
  'id': instance.id,
  'profilePhoto': instance.image,
  'firstName': instance.firstName,
  'lastName': instance.lastName,
  'role': instance.role,
  'phoneNumber': instance.phoneNumber,
  'address': instance.address,
};
