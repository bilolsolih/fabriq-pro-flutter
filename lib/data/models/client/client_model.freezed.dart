// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'client_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Client {

 int get id; String get firstName; String get lastName; String get address; String get phoneNumber; int get purchasesCount;
/// Create a copy of Client
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ClientCopyWith<Client> get copyWith => _$ClientCopyWithImpl<Client>(this as Client, _$identity);

  /// Serializes this Client to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Client&&(identical(other.id, id) || other.id == id)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.address, address) || other.address == address)&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.purchasesCount, purchasesCount) || other.purchasesCount == purchasesCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,firstName,lastName,address,phoneNumber,purchasesCount);

@override
String toString() {
  return 'Client(id: $id, firstName: $firstName, lastName: $lastName, address: $address, phoneNumber: $phoneNumber, purchasesCount: $purchasesCount)';
}


}

/// @nodoc
abstract mixin class $ClientCopyWith<$Res>  {
  factory $ClientCopyWith(Client value, $Res Function(Client) _then) = _$ClientCopyWithImpl;
@useResult
$Res call({
 int id, String firstName, String lastName, String address, String phoneNumber, int purchasesCount
});




}
/// @nodoc
class _$ClientCopyWithImpl<$Res>
    implements $ClientCopyWith<$Res> {
  _$ClientCopyWithImpl(this._self, this._then);

  final Client _self;
  final $Res Function(Client) _then;

/// Create a copy of Client
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? firstName = null,Object? lastName = null,Object? address = null,Object? phoneNumber = null,Object? purchasesCount = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,firstName: null == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String,lastName: null == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,phoneNumber: null == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String,purchasesCount: null == purchasesCount ? _self.purchasesCount : purchasesCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _Client implements Client {
  const _Client({required this.id, required this.firstName, required this.lastName, required this.address, required this.phoneNumber, required this.purchasesCount});
  factory _Client.fromJson(Map<String, dynamic> json) => _$ClientFromJson(json);

@override final  int id;
@override final  String firstName;
@override final  String lastName;
@override final  String address;
@override final  String phoneNumber;
@override final  int purchasesCount;

/// Create a copy of Client
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ClientCopyWith<_Client> get copyWith => __$ClientCopyWithImpl<_Client>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ClientToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Client&&(identical(other.id, id) || other.id == id)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.address, address) || other.address == address)&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.purchasesCount, purchasesCount) || other.purchasesCount == purchasesCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,firstName,lastName,address,phoneNumber,purchasesCount);

@override
String toString() {
  return 'Client(id: $id, firstName: $firstName, lastName: $lastName, address: $address, phoneNumber: $phoneNumber, purchasesCount: $purchasesCount)';
}


}

/// @nodoc
abstract mixin class _$ClientCopyWith<$Res> implements $ClientCopyWith<$Res> {
  factory _$ClientCopyWith(_Client value, $Res Function(_Client) _then) = __$ClientCopyWithImpl;
@override @useResult
$Res call({
 int id, String firstName, String lastName, String address, String phoneNumber, int purchasesCount
});




}
/// @nodoc
class __$ClientCopyWithImpl<$Res>
    implements _$ClientCopyWith<$Res> {
  __$ClientCopyWithImpl(this._self, this._then);

  final _Client _self;
  final $Res Function(_Client) _then;

/// Create a copy of Client
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? firstName = null,Object? lastName = null,Object? address = null,Object? phoneNumber = null,Object? purchasesCount = null,}) {
  return _then(_Client(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,firstName: null == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String,lastName: null == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,phoneNumber: null == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String,purchasesCount: null == purchasesCount ? _self.purchasesCount : purchasesCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
