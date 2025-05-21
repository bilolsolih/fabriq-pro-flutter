// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'accessory_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AccessoryAddModel {

 int get fromUserId; int get accessoryId; num get quantity; String get unit;
/// Create a copy of AccessoryAddModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AccessoryAddModelCopyWith<AccessoryAddModel> get copyWith => _$AccessoryAddModelCopyWithImpl<AccessoryAddModel>(this as AccessoryAddModel, _$identity);

  /// Serializes this AccessoryAddModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AccessoryAddModel&&(identical(other.fromUserId, fromUserId) || other.fromUserId == fromUserId)&&(identical(other.accessoryId, accessoryId) || other.accessoryId == accessoryId)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.unit, unit) || other.unit == unit));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,fromUserId,accessoryId,quantity,unit);

@override
String toString() {
  return 'AccessoryAddModel(fromUserId: $fromUserId, accessoryId: $accessoryId, quantity: $quantity, unit: $unit)';
}


}

/// @nodoc
abstract mixin class $AccessoryAddModelCopyWith<$Res>  {
  factory $AccessoryAddModelCopyWith(AccessoryAddModel value, $Res Function(AccessoryAddModel) _then) = _$AccessoryAddModelCopyWithImpl;
@useResult
$Res call({
 int fromUserId, int accessoryId, num quantity, String unit
});




}
/// @nodoc
class _$AccessoryAddModelCopyWithImpl<$Res>
    implements $AccessoryAddModelCopyWith<$Res> {
  _$AccessoryAddModelCopyWithImpl(this._self, this._then);

  final AccessoryAddModel _self;
  final $Res Function(AccessoryAddModel) _then;

/// Create a copy of AccessoryAddModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? fromUserId = null,Object? accessoryId = null,Object? quantity = null,Object? unit = null,}) {
  return _then(_self.copyWith(
fromUserId: null == fromUserId ? _self.fromUserId : fromUserId // ignore: cast_nullable_to_non_nullable
as int,accessoryId: null == accessoryId ? _self.accessoryId : accessoryId // ignore: cast_nullable_to_non_nullable
as int,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as num,unit: null == unit ? _self.unit : unit // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _AccessoryAddModel implements AccessoryAddModel {
  const _AccessoryAddModel({required this.fromUserId, required this.accessoryId, required this.quantity, required this.unit});
  factory _AccessoryAddModel.fromJson(Map<String, dynamic> json) => _$AccessoryAddModelFromJson(json);

@override final  int fromUserId;
@override final  int accessoryId;
@override final  num quantity;
@override final  String unit;

/// Create a copy of AccessoryAddModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AccessoryAddModelCopyWith<_AccessoryAddModel> get copyWith => __$AccessoryAddModelCopyWithImpl<_AccessoryAddModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AccessoryAddModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AccessoryAddModel&&(identical(other.fromUserId, fromUserId) || other.fromUserId == fromUserId)&&(identical(other.accessoryId, accessoryId) || other.accessoryId == accessoryId)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.unit, unit) || other.unit == unit));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,fromUserId,accessoryId,quantity,unit);

@override
String toString() {
  return 'AccessoryAddModel(fromUserId: $fromUserId, accessoryId: $accessoryId, quantity: $quantity, unit: $unit)';
}


}

/// @nodoc
abstract mixin class _$AccessoryAddModelCopyWith<$Res> implements $AccessoryAddModelCopyWith<$Res> {
  factory _$AccessoryAddModelCopyWith(_AccessoryAddModel value, $Res Function(_AccessoryAddModel) _then) = __$AccessoryAddModelCopyWithImpl;
@override @useResult
$Res call({
 int fromUserId, int accessoryId, num quantity, String unit
});




}
/// @nodoc
class __$AccessoryAddModelCopyWithImpl<$Res>
    implements _$AccessoryAddModelCopyWith<$Res> {
  __$AccessoryAddModelCopyWithImpl(this._self, this._then);

  final _AccessoryAddModel _self;
  final $Res Function(_AccessoryAddModel) _then;

/// Create a copy of AccessoryAddModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? fromUserId = null,Object? accessoryId = null,Object? quantity = null,Object? unit = null,}) {
  return _then(_AccessoryAddModel(
fromUserId: null == fromUserId ? _self.fromUserId : fromUserId // ignore: cast_nullable_to_non_nullable
as int,accessoryId: null == accessoryId ? _self.accessoryId : accessoryId // ignore: cast_nullable_to_non_nullable
as int,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as num,unit: null == unit ? _self.unit : unit // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$AccessoryEntryModel {

 int get id; String get title;
/// Create a copy of AccessoryEntryModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AccessoryEntryModelCopyWith<AccessoryEntryModel> get copyWith => _$AccessoryEntryModelCopyWithImpl<AccessoryEntryModel>(this as AccessoryEntryModel, _$identity);

  /// Serializes this AccessoryEntryModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AccessoryEntryModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title);

@override
String toString() {
  return 'AccessoryEntryModel(id: $id, title: $title)';
}


}

/// @nodoc
abstract mixin class $AccessoryEntryModelCopyWith<$Res>  {
  factory $AccessoryEntryModelCopyWith(AccessoryEntryModel value, $Res Function(AccessoryEntryModel) _then) = _$AccessoryEntryModelCopyWithImpl;
@useResult
$Res call({
 int id, String title
});




}
/// @nodoc
class _$AccessoryEntryModelCopyWithImpl<$Res>
    implements $AccessoryEntryModelCopyWith<$Res> {
  _$AccessoryEntryModelCopyWithImpl(this._self, this._then);

  final AccessoryEntryModel _self;
  final $Res Function(AccessoryEntryModel) _then;

/// Create a copy of AccessoryEntryModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _AccessoryEntryModel implements AccessoryEntryModel {
  const _AccessoryEntryModel({required this.id, required this.title});
  factory _AccessoryEntryModel.fromJson(Map<String, dynamic> json) => _$AccessoryEntryModelFromJson(json);

@override final  int id;
@override final  String title;

/// Create a copy of AccessoryEntryModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AccessoryEntryModelCopyWith<_AccessoryEntryModel> get copyWith => __$AccessoryEntryModelCopyWithImpl<_AccessoryEntryModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AccessoryEntryModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AccessoryEntryModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title);

@override
String toString() {
  return 'AccessoryEntryModel(id: $id, title: $title)';
}


}

/// @nodoc
abstract mixin class _$AccessoryEntryModelCopyWith<$Res> implements $AccessoryEntryModelCopyWith<$Res> {
  factory _$AccessoryEntryModelCopyWith(_AccessoryEntryModel value, $Res Function(_AccessoryEntryModel) _then) = __$AccessoryEntryModelCopyWithImpl;
@override @useResult
$Res call({
 int id, String title
});




}
/// @nodoc
class __$AccessoryEntryModelCopyWithImpl<$Res>
    implements _$AccessoryEntryModelCopyWith<$Res> {
  __$AccessoryEntryModelCopyWithImpl(this._self, this._then);

  final _AccessoryEntryModel _self;
  final $Res Function(_AccessoryEntryModel) _then;

/// Create a copy of AccessoryEntryModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,}) {
  return _then(_AccessoryEntryModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$AccessoryTypeModel {

 int get id; String get title; num get quantity;
/// Create a copy of AccessoryTypeModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AccessoryTypeModelCopyWith<AccessoryTypeModel> get copyWith => _$AccessoryTypeModelCopyWithImpl<AccessoryTypeModel>(this as AccessoryTypeModel, _$identity);

  /// Serializes this AccessoryTypeModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AccessoryTypeModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.quantity, quantity) || other.quantity == quantity));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,quantity);

@override
String toString() {
  return 'AccessoryTypeModel(id: $id, title: $title, quantity: $quantity)';
}


}

/// @nodoc
abstract mixin class $AccessoryTypeModelCopyWith<$Res>  {
  factory $AccessoryTypeModelCopyWith(AccessoryTypeModel value, $Res Function(AccessoryTypeModel) _then) = _$AccessoryTypeModelCopyWithImpl;
@useResult
$Res call({
 int id, String title, num quantity
});




}
/// @nodoc
class _$AccessoryTypeModelCopyWithImpl<$Res>
    implements $AccessoryTypeModelCopyWith<$Res> {
  _$AccessoryTypeModelCopyWithImpl(this._self, this._then);

  final AccessoryTypeModel _self;
  final $Res Function(AccessoryTypeModel) _then;

/// Create a copy of AccessoryTypeModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? quantity = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as num,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _AccessoryTypeModel implements AccessoryTypeModel {
  const _AccessoryTypeModel({required this.id, required this.title, required this.quantity});
  factory _AccessoryTypeModel.fromJson(Map<String, dynamic> json) => _$AccessoryTypeModelFromJson(json);

@override final  int id;
@override final  String title;
@override final  num quantity;

/// Create a copy of AccessoryTypeModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AccessoryTypeModelCopyWith<_AccessoryTypeModel> get copyWith => __$AccessoryTypeModelCopyWithImpl<_AccessoryTypeModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AccessoryTypeModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AccessoryTypeModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.quantity, quantity) || other.quantity == quantity));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,quantity);

@override
String toString() {
  return 'AccessoryTypeModel(id: $id, title: $title, quantity: $quantity)';
}


}

/// @nodoc
abstract mixin class _$AccessoryTypeModelCopyWith<$Res> implements $AccessoryTypeModelCopyWith<$Res> {
  factory _$AccessoryTypeModelCopyWith(_AccessoryTypeModel value, $Res Function(_AccessoryTypeModel) _then) = __$AccessoryTypeModelCopyWithImpl;
@override @useResult
$Res call({
 int id, String title, num quantity
});




}
/// @nodoc
class __$AccessoryTypeModelCopyWithImpl<$Res>
    implements _$AccessoryTypeModelCopyWith<$Res> {
  __$AccessoryTypeModelCopyWithImpl(this._self, this._then);

  final _AccessoryTypeModel _self;
  final $Res Function(_AccessoryTypeModel) _then;

/// Create a copy of AccessoryTypeModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? quantity = null,}) {
  return _then(_AccessoryTypeModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as num,
  ));
}


}


/// @nodoc
mixin _$AccessoryTypeCreateModel {

 String get title;
/// Create a copy of AccessoryTypeCreateModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AccessoryTypeCreateModelCopyWith<AccessoryTypeCreateModel> get copyWith => _$AccessoryTypeCreateModelCopyWithImpl<AccessoryTypeCreateModel>(this as AccessoryTypeCreateModel, _$identity);

  /// Serializes this AccessoryTypeCreateModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AccessoryTypeCreateModel&&(identical(other.title, title) || other.title == title));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title);

@override
String toString() {
  return 'AccessoryTypeCreateModel(title: $title)';
}


}

/// @nodoc
abstract mixin class $AccessoryTypeCreateModelCopyWith<$Res>  {
  factory $AccessoryTypeCreateModelCopyWith(AccessoryTypeCreateModel value, $Res Function(AccessoryTypeCreateModel) _then) = _$AccessoryTypeCreateModelCopyWithImpl;
@useResult
$Res call({
 String title
});




}
/// @nodoc
class _$AccessoryTypeCreateModelCopyWithImpl<$Res>
    implements $AccessoryTypeCreateModelCopyWith<$Res> {
  _$AccessoryTypeCreateModelCopyWithImpl(this._self, this._then);

  final AccessoryTypeCreateModel _self;
  final $Res Function(AccessoryTypeCreateModel) _then;

/// Create a copy of AccessoryTypeCreateModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = null,}) {
  return _then(_self.copyWith(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _AccessoryTypeCreateModel implements AccessoryTypeCreateModel {
  const _AccessoryTypeCreateModel({required this.title});
  factory _AccessoryTypeCreateModel.fromJson(Map<String, dynamic> json) => _$AccessoryTypeCreateModelFromJson(json);

@override final  String title;

/// Create a copy of AccessoryTypeCreateModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AccessoryTypeCreateModelCopyWith<_AccessoryTypeCreateModel> get copyWith => __$AccessoryTypeCreateModelCopyWithImpl<_AccessoryTypeCreateModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AccessoryTypeCreateModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AccessoryTypeCreateModel&&(identical(other.title, title) || other.title == title));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title);

@override
String toString() {
  return 'AccessoryTypeCreateModel(title: $title)';
}


}

/// @nodoc
abstract mixin class _$AccessoryTypeCreateModelCopyWith<$Res> implements $AccessoryTypeCreateModelCopyWith<$Res> {
  factory _$AccessoryTypeCreateModelCopyWith(_AccessoryTypeCreateModel value, $Res Function(_AccessoryTypeCreateModel) _then) = __$AccessoryTypeCreateModelCopyWithImpl;
@override @useResult
$Res call({
 String title
});




}
/// @nodoc
class __$AccessoryTypeCreateModelCopyWithImpl<$Res>
    implements _$AccessoryTypeCreateModelCopyWith<$Res> {
  __$AccessoryTypeCreateModelCopyWithImpl(this._self, this._then);

  final _AccessoryTypeCreateModel _self;
  final $Res Function(_AccessoryTypeCreateModel) _then;

/// Create a copy of AccessoryTypeCreateModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = null,}) {
  return _then(_AccessoryTypeCreateModel(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$AccessoryTypeUpdateModel {

@JsonKey(includeToJson: false) int get id; String get title;
/// Create a copy of AccessoryTypeUpdateModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AccessoryTypeUpdateModelCopyWith<AccessoryTypeUpdateModel> get copyWith => _$AccessoryTypeUpdateModelCopyWithImpl<AccessoryTypeUpdateModel>(this as AccessoryTypeUpdateModel, _$identity);

  /// Serializes this AccessoryTypeUpdateModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AccessoryTypeUpdateModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title);

@override
String toString() {
  return 'AccessoryTypeUpdateModel(id: $id, title: $title)';
}


}

/// @nodoc
abstract mixin class $AccessoryTypeUpdateModelCopyWith<$Res>  {
  factory $AccessoryTypeUpdateModelCopyWith(AccessoryTypeUpdateModel value, $Res Function(AccessoryTypeUpdateModel) _then) = _$AccessoryTypeUpdateModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(includeToJson: false) int id, String title
});




}
/// @nodoc
class _$AccessoryTypeUpdateModelCopyWithImpl<$Res>
    implements $AccessoryTypeUpdateModelCopyWith<$Res> {
  _$AccessoryTypeUpdateModelCopyWithImpl(this._self, this._then);

  final AccessoryTypeUpdateModel _self;
  final $Res Function(AccessoryTypeUpdateModel) _then;

/// Create a copy of AccessoryTypeUpdateModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _AccessoryTypeUpdateModel implements AccessoryTypeUpdateModel {
  const _AccessoryTypeUpdateModel({@JsonKey(includeToJson: false) required this.id, required this.title});
  factory _AccessoryTypeUpdateModel.fromJson(Map<String, dynamic> json) => _$AccessoryTypeUpdateModelFromJson(json);

@override@JsonKey(includeToJson: false) final  int id;
@override final  String title;

/// Create a copy of AccessoryTypeUpdateModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AccessoryTypeUpdateModelCopyWith<_AccessoryTypeUpdateModel> get copyWith => __$AccessoryTypeUpdateModelCopyWithImpl<_AccessoryTypeUpdateModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AccessoryTypeUpdateModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AccessoryTypeUpdateModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title);

@override
String toString() {
  return 'AccessoryTypeUpdateModel(id: $id, title: $title)';
}


}

/// @nodoc
abstract mixin class _$AccessoryTypeUpdateModelCopyWith<$Res> implements $AccessoryTypeUpdateModelCopyWith<$Res> {
  factory _$AccessoryTypeUpdateModelCopyWith(_AccessoryTypeUpdateModel value, $Res Function(_AccessoryTypeUpdateModel) _then) = __$AccessoryTypeUpdateModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(includeToJson: false) int id, String title
});




}
/// @nodoc
class __$AccessoryTypeUpdateModelCopyWithImpl<$Res>
    implements _$AccessoryTypeUpdateModelCopyWith<$Res> {
  __$AccessoryTypeUpdateModelCopyWithImpl(this._self, this._then);

  final _AccessoryTypeUpdateModel _self;
  final $Res Function(_AccessoryTypeUpdateModel) _then;

/// Create a copy of AccessoryTypeUpdateModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,}) {
  return _then(_AccessoryTypeUpdateModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$AccessoryModel {

 int get id; String get fromUser; String get fromUserRole; String get toUser; String get toUserRole; num get quantity; String get unit; DateTime get date; String get status;
/// Create a copy of AccessoryModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AccessoryModelCopyWith<AccessoryModel> get copyWith => _$AccessoryModelCopyWithImpl<AccessoryModel>(this as AccessoryModel, _$identity);

  /// Serializes this AccessoryModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AccessoryModel&&(identical(other.id, id) || other.id == id)&&(identical(other.fromUser, fromUser) || other.fromUser == fromUser)&&(identical(other.fromUserRole, fromUserRole) || other.fromUserRole == fromUserRole)&&(identical(other.toUser, toUser) || other.toUser == toUser)&&(identical(other.toUserRole, toUserRole) || other.toUserRole == toUserRole)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.unit, unit) || other.unit == unit)&&(identical(other.date, date) || other.date == date)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,fromUser,fromUserRole,toUser,toUserRole,quantity,unit,date,status);

@override
String toString() {
  return 'AccessoryModel(id: $id, fromUser: $fromUser, fromUserRole: $fromUserRole, toUser: $toUser, toUserRole: $toUserRole, quantity: $quantity, unit: $unit, date: $date, status: $status)';
}


}

/// @nodoc
abstract mixin class $AccessoryModelCopyWith<$Res>  {
  factory $AccessoryModelCopyWith(AccessoryModel value, $Res Function(AccessoryModel) _then) = _$AccessoryModelCopyWithImpl;
@useResult
$Res call({
 int id, String fromUser, String fromUserRole, String toUser, String toUserRole, num quantity, String unit, DateTime date, String status
});




}
/// @nodoc
class _$AccessoryModelCopyWithImpl<$Res>
    implements $AccessoryModelCopyWith<$Res> {
  _$AccessoryModelCopyWithImpl(this._self, this._then);

  final AccessoryModel _self;
  final $Res Function(AccessoryModel) _then;

/// Create a copy of AccessoryModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? fromUser = null,Object? fromUserRole = null,Object? toUser = null,Object? toUserRole = null,Object? quantity = null,Object? unit = null,Object? date = null,Object? status = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,fromUser: null == fromUser ? _self.fromUser : fromUser // ignore: cast_nullable_to_non_nullable
as String,fromUserRole: null == fromUserRole ? _self.fromUserRole : fromUserRole // ignore: cast_nullable_to_non_nullable
as String,toUser: null == toUser ? _self.toUser : toUser // ignore: cast_nullable_to_non_nullable
as String,toUserRole: null == toUserRole ? _self.toUserRole : toUserRole // ignore: cast_nullable_to_non_nullable
as String,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as num,unit: null == unit ? _self.unit : unit // ignore: cast_nullable_to_non_nullable
as String,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _AccessoryModel implements AccessoryModel {
  const _AccessoryModel({required this.id, required this.fromUser, required this.fromUserRole, required this.toUser, required this.toUserRole, required this.quantity, required this.unit, required this.date, required this.status});
  factory _AccessoryModel.fromJson(Map<String, dynamic> json) => _$AccessoryModelFromJson(json);

@override final  int id;
@override final  String fromUser;
@override final  String fromUserRole;
@override final  String toUser;
@override final  String toUserRole;
@override final  num quantity;
@override final  String unit;
@override final  DateTime date;
@override final  String status;

/// Create a copy of AccessoryModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AccessoryModelCopyWith<_AccessoryModel> get copyWith => __$AccessoryModelCopyWithImpl<_AccessoryModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AccessoryModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AccessoryModel&&(identical(other.id, id) || other.id == id)&&(identical(other.fromUser, fromUser) || other.fromUser == fromUser)&&(identical(other.fromUserRole, fromUserRole) || other.fromUserRole == fromUserRole)&&(identical(other.toUser, toUser) || other.toUser == toUser)&&(identical(other.toUserRole, toUserRole) || other.toUserRole == toUserRole)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.unit, unit) || other.unit == unit)&&(identical(other.date, date) || other.date == date)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,fromUser,fromUserRole,toUser,toUserRole,quantity,unit,date,status);

@override
String toString() {
  return 'AccessoryModel(id: $id, fromUser: $fromUser, fromUserRole: $fromUserRole, toUser: $toUser, toUserRole: $toUserRole, quantity: $quantity, unit: $unit, date: $date, status: $status)';
}


}

/// @nodoc
abstract mixin class _$AccessoryModelCopyWith<$Res> implements $AccessoryModelCopyWith<$Res> {
  factory _$AccessoryModelCopyWith(_AccessoryModel value, $Res Function(_AccessoryModel) _then) = __$AccessoryModelCopyWithImpl;
@override @useResult
$Res call({
 int id, String fromUser, String fromUserRole, String toUser, String toUserRole, num quantity, String unit, DateTime date, String status
});




}
/// @nodoc
class __$AccessoryModelCopyWithImpl<$Res>
    implements _$AccessoryModelCopyWith<$Res> {
  __$AccessoryModelCopyWithImpl(this._self, this._then);

  final _AccessoryModel _self;
  final $Res Function(_AccessoryModel) _then;

/// Create a copy of AccessoryModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? fromUser = null,Object? fromUserRole = null,Object? toUser = null,Object? toUserRole = null,Object? quantity = null,Object? unit = null,Object? date = null,Object? status = null,}) {
  return _then(_AccessoryModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,fromUser: null == fromUser ? _self.fromUser : fromUser // ignore: cast_nullable_to_non_nullable
as String,fromUserRole: null == fromUserRole ? _self.fromUserRole : fromUserRole // ignore: cast_nullable_to_non_nullable
as String,toUser: null == toUser ? _self.toUser : toUser // ignore: cast_nullable_to_non_nullable
as String,toUserRole: null == toUserRole ? _self.toUserRole : toUserRole // ignore: cast_nullable_to_non_nullable
as String,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as num,unit: null == unit ? _self.unit : unit // ignore: cast_nullable_to_non_nullable
as String,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
