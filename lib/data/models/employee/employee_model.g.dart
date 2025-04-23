// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'employee_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Employee _$EmployeeFromJson(Map<String, dynamic> json) => _Employee(
  id: (json['id'] as num).toInt(),
  image: json['profilePhoto'] as String?,
  firstName: json['firstName'] as String,
  lastName: json['lastName'] as String,
  role: json['role'] as String,
  phoneNumber: json['phoneNumber'] as String,
  address: json['address'] as String,
);

Map<String, dynamic> _$EmployeeToJson(_Employee instance) => <String, dynamic>{
  'id': instance.id,
  'profilePhoto': instance.image,
  'firstName': instance.firstName,
  'lastName': instance.lastName,
  'role': instance.role,
  'phoneNumber': instance.phoneNumber,
  'address': instance.address,
};
