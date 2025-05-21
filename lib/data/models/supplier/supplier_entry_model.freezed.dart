// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'supplier_entry_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SupplierEntryModel {

 int get id; String get firstName; String get lastName;
/// Create a copy of SupplierEntryModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SupplierEntryModelCopyWith<SupplierEntryModel> get copyWith => _$SupplierEntryModelCopyWithImpl<SupplierEntryModel>(this as SupplierEntryModel, _$identity);

  /// Serializes this SupplierEntryModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SupplierEntryModel&&(identical(other.id, id) || other.id == id)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,firstName,lastName);

@override
String toString() {
  return 'SupplierEntryModel(id: $id, firstName: $firstName, lastName: $lastName)';
}


}

/// @nodoc
abstract mixin class $SupplierEntryModelCopyWith<$Res>  {
  factory $SupplierEntryModelCopyWith(SupplierEntryModel value, $Res Function(SupplierEntryModel) _then) = _$SupplierEntryModelCopyWithImpl;
@useResult
$Res call({
 int id, String firstName, String lastName
});




}
/// @nodoc
class _$SupplierEntryModelCopyWithImpl<$Res>
    implements $SupplierEntryModelCopyWith<$Res> {
  _$SupplierEntryModelCopyWithImpl(this._self, this._then);

  final SupplierEntryModel _self;
  final $Res Function(SupplierEntryModel) _then;

/// Create a copy of SupplierEntryModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? firstName = null,Object? lastName = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,firstName: null == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String,lastName: null == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _SupplierEntryModel implements SupplierEntryModel {
  const _SupplierEntryModel({required this.id, required this.firstName, required this.lastName});
  factory _SupplierEntryModel.fromJson(Map<String, dynamic> json) => _$SupplierEntryModelFromJson(json);

@override final  int id;
@override final  String firstName;
@override final  String lastName;

/// Create a copy of SupplierEntryModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SupplierEntryModelCopyWith<_SupplierEntryModel> get copyWith => __$SupplierEntryModelCopyWithImpl<_SupplierEntryModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SupplierEntryModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SupplierEntryModel&&(identical(other.id, id) || other.id == id)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,firstName,lastName);

@override
String toString() {
  return 'SupplierEntryModel(id: $id, firstName: $firstName, lastName: $lastName)';
}


}

/// @nodoc
abstract mixin class _$SupplierEntryModelCopyWith<$Res> implements $SupplierEntryModelCopyWith<$Res> {
  factory _$SupplierEntryModelCopyWith(_SupplierEntryModel value, $Res Function(_SupplierEntryModel) _then) = __$SupplierEntryModelCopyWithImpl;
@override @useResult
$Res call({
 int id, String firstName, String lastName
});




}
/// @nodoc
class __$SupplierEntryModelCopyWithImpl<$Res>
    implements _$SupplierEntryModelCopyWith<$Res> {
  __$SupplierEntryModelCopyWithImpl(this._self, this._then);

  final _SupplierEntryModel _self;
  final $Res Function(_SupplierEntryModel) _then;

/// Create a copy of SupplierEntryModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? firstName = null,Object? lastName = null,}) {
  return _then(_SupplierEntryModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,firstName: null == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String,lastName: null == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
