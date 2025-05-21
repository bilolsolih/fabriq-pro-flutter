// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'material_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
MaterialTypeItemModel _$MaterialTypeItemModelFromJson(
  Map<String, dynamic> json
) {
    return _MaterialListModel.fromJson(
      json
    );
}

/// @nodoc
mixin _$MaterialTypeItemModel {

 int get id; String get title; num get totalInKg; num get totalInMeter; num get totalInPack;
/// Create a copy of MaterialTypeItemModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MaterialTypeItemModelCopyWith<MaterialTypeItemModel> get copyWith => _$MaterialTypeItemModelCopyWithImpl<MaterialTypeItemModel>(this as MaterialTypeItemModel, _$identity);

  /// Serializes this MaterialTypeItemModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MaterialTypeItemModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.totalInKg, totalInKg) || other.totalInKg == totalInKg)&&(identical(other.totalInMeter, totalInMeter) || other.totalInMeter == totalInMeter)&&(identical(other.totalInPack, totalInPack) || other.totalInPack == totalInPack));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,totalInKg,totalInMeter,totalInPack);

@override
String toString() {
  return 'MaterialTypeItemModel(id: $id, title: $title, totalInKg: $totalInKg, totalInMeter: $totalInMeter, totalInPack: $totalInPack)';
}


}

/// @nodoc
abstract mixin class $MaterialTypeItemModelCopyWith<$Res>  {
  factory $MaterialTypeItemModelCopyWith(MaterialTypeItemModel value, $Res Function(MaterialTypeItemModel) _then) = _$MaterialTypeItemModelCopyWithImpl;
@useResult
$Res call({
 int id, String title, num totalInKg, num totalInMeter, num totalInPack
});




}
/// @nodoc
class _$MaterialTypeItemModelCopyWithImpl<$Res>
    implements $MaterialTypeItemModelCopyWith<$Res> {
  _$MaterialTypeItemModelCopyWithImpl(this._self, this._then);

  final MaterialTypeItemModel _self;
  final $Res Function(MaterialTypeItemModel) _then;

/// Create a copy of MaterialTypeItemModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? totalInKg = null,Object? totalInMeter = null,Object? totalInPack = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,totalInKg: null == totalInKg ? _self.totalInKg : totalInKg // ignore: cast_nullable_to_non_nullable
as num,totalInMeter: null == totalInMeter ? _self.totalInMeter : totalInMeter // ignore: cast_nullable_to_non_nullable
as num,totalInPack: null == totalInPack ? _self.totalInPack : totalInPack // ignore: cast_nullable_to_non_nullable
as num,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _MaterialListModel implements MaterialTypeItemModel {
  const _MaterialListModel({required this.id, required this.title, required this.totalInKg, required this.totalInMeter, required this.totalInPack});
  factory _MaterialListModel.fromJson(Map<String, dynamic> json) => _$MaterialListModelFromJson(json);

@override final  int id;
@override final  String title;
@override final  num totalInKg;
@override final  num totalInMeter;
@override final  num totalInPack;

/// Create a copy of MaterialTypeItemModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MaterialListModelCopyWith<_MaterialListModel> get copyWith => __$MaterialListModelCopyWithImpl<_MaterialListModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MaterialListModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MaterialListModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.totalInKg, totalInKg) || other.totalInKg == totalInKg)&&(identical(other.totalInMeter, totalInMeter) || other.totalInMeter == totalInMeter)&&(identical(other.totalInPack, totalInPack) || other.totalInPack == totalInPack));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,totalInKg,totalInMeter,totalInPack);

@override
String toString() {
  return 'MaterialTypeItemModel(id: $id, title: $title, totalInKg: $totalInKg, totalInMeter: $totalInMeter, totalInPack: $totalInPack)';
}


}

/// @nodoc
abstract mixin class _$MaterialListModelCopyWith<$Res> implements $MaterialTypeItemModelCopyWith<$Res> {
  factory _$MaterialListModelCopyWith(_MaterialListModel value, $Res Function(_MaterialListModel) _then) = __$MaterialListModelCopyWithImpl;
@override @useResult
$Res call({
 int id, String title, num totalInKg, num totalInMeter, num totalInPack
});




}
/// @nodoc
class __$MaterialListModelCopyWithImpl<$Res>
    implements _$MaterialListModelCopyWith<$Res> {
  __$MaterialListModelCopyWithImpl(this._self, this._then);

  final _MaterialListModel _self;
  final $Res Function(_MaterialListModel) _then;

/// Create a copy of MaterialTypeItemModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? totalInKg = null,Object? totalInMeter = null,Object? totalInPack = null,}) {
  return _then(_MaterialListModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,totalInKg: null == totalInKg ? _self.totalInKg : totalInKg // ignore: cast_nullable_to_non_nullable
as num,totalInMeter: null == totalInMeter ? _self.totalInMeter : totalInMeter // ignore: cast_nullable_to_non_nullable
as num,totalInPack: null == totalInPack ? _self.totalInPack : totalInPack // ignore: cast_nullable_to_non_nullable
as num,
  ));
}


}


/// @nodoc
mixin _$MaterialTypeCreateModel {

 String get title;
/// Create a copy of MaterialTypeCreateModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MaterialTypeCreateModelCopyWith<MaterialTypeCreateModel> get copyWith => _$MaterialTypeCreateModelCopyWithImpl<MaterialTypeCreateModel>(this as MaterialTypeCreateModel, _$identity);

  /// Serializes this MaterialTypeCreateModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MaterialTypeCreateModel&&(identical(other.title, title) || other.title == title));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title);

@override
String toString() {
  return 'MaterialTypeCreateModel(title: $title)';
}


}

/// @nodoc
abstract mixin class $MaterialTypeCreateModelCopyWith<$Res>  {
  factory $MaterialTypeCreateModelCopyWith(MaterialTypeCreateModel value, $Res Function(MaterialTypeCreateModel) _then) = _$MaterialTypeCreateModelCopyWithImpl;
@useResult
$Res call({
 String title
});




}
/// @nodoc
class _$MaterialTypeCreateModelCopyWithImpl<$Res>
    implements $MaterialTypeCreateModelCopyWith<$Res> {
  _$MaterialTypeCreateModelCopyWithImpl(this._self, this._then);

  final MaterialTypeCreateModel _self;
  final $Res Function(MaterialTypeCreateModel) _then;

/// Create a copy of MaterialTypeCreateModel
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

class _MaterialTypeCreateModel implements MaterialTypeCreateModel {
  const _MaterialTypeCreateModel({required this.title});
  factory _MaterialTypeCreateModel.fromJson(Map<String, dynamic> json) => _$MaterialTypeCreateModelFromJson(json);

@override final  String title;

/// Create a copy of MaterialTypeCreateModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MaterialTypeCreateModelCopyWith<_MaterialTypeCreateModel> get copyWith => __$MaterialTypeCreateModelCopyWithImpl<_MaterialTypeCreateModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MaterialTypeCreateModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MaterialTypeCreateModel&&(identical(other.title, title) || other.title == title));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title);

@override
String toString() {
  return 'MaterialTypeCreateModel(title: $title)';
}


}

/// @nodoc
abstract mixin class _$MaterialTypeCreateModelCopyWith<$Res> implements $MaterialTypeCreateModelCopyWith<$Res> {
  factory _$MaterialTypeCreateModelCopyWith(_MaterialTypeCreateModel value, $Res Function(_MaterialTypeCreateModel) _then) = __$MaterialTypeCreateModelCopyWithImpl;
@override @useResult
$Res call({
 String title
});




}
/// @nodoc
class __$MaterialTypeCreateModelCopyWithImpl<$Res>
    implements _$MaterialTypeCreateModelCopyWith<$Res> {
  __$MaterialTypeCreateModelCopyWithImpl(this._self, this._then);

  final _MaterialTypeCreateModel _self;
  final $Res Function(_MaterialTypeCreateModel) _then;

/// Create a copy of MaterialTypeCreateModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = null,}) {
  return _then(_MaterialTypeCreateModel(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$MaterialTypeUpdateModel {

@JsonKey(includeToJson: false) int get id; String get title;
/// Create a copy of MaterialTypeUpdateModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MaterialTypeUpdateModelCopyWith<MaterialTypeUpdateModel> get copyWith => _$MaterialTypeUpdateModelCopyWithImpl<MaterialTypeUpdateModel>(this as MaterialTypeUpdateModel, _$identity);

  /// Serializes this MaterialTypeUpdateModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MaterialTypeUpdateModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title);

@override
String toString() {
  return 'MaterialTypeUpdateModel(id: $id, title: $title)';
}


}

/// @nodoc
abstract mixin class $MaterialTypeUpdateModelCopyWith<$Res>  {
  factory $MaterialTypeUpdateModelCopyWith(MaterialTypeUpdateModel value, $Res Function(MaterialTypeUpdateModel) _then) = _$MaterialTypeUpdateModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(includeToJson: false) int id, String title
});




}
/// @nodoc
class _$MaterialTypeUpdateModelCopyWithImpl<$Res>
    implements $MaterialTypeUpdateModelCopyWith<$Res> {
  _$MaterialTypeUpdateModelCopyWithImpl(this._self, this._then);

  final MaterialTypeUpdateModel _self;
  final $Res Function(MaterialTypeUpdateModel) _then;

/// Create a copy of MaterialTypeUpdateModel
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

class _MaterialTypeUpdateModel implements MaterialTypeUpdateModel {
  const _MaterialTypeUpdateModel({@JsonKey(includeToJson: false) required this.id, required this.title});
  factory _MaterialTypeUpdateModel.fromJson(Map<String, dynamic> json) => _$MaterialTypeUpdateModelFromJson(json);

@override@JsonKey(includeToJson: false) final  int id;
@override final  String title;

/// Create a copy of MaterialTypeUpdateModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MaterialTypeUpdateModelCopyWith<_MaterialTypeUpdateModel> get copyWith => __$MaterialTypeUpdateModelCopyWithImpl<_MaterialTypeUpdateModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MaterialTypeUpdateModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MaterialTypeUpdateModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title);

@override
String toString() {
  return 'MaterialTypeUpdateModel(id: $id, title: $title)';
}


}

/// @nodoc
abstract mixin class _$MaterialTypeUpdateModelCopyWith<$Res> implements $MaterialTypeUpdateModelCopyWith<$Res> {
  factory _$MaterialTypeUpdateModelCopyWith(_MaterialTypeUpdateModel value, $Res Function(_MaterialTypeUpdateModel) _then) = __$MaterialTypeUpdateModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(includeToJson: false) int id, String title
});




}
/// @nodoc
class __$MaterialTypeUpdateModelCopyWithImpl<$Res>
    implements _$MaterialTypeUpdateModelCopyWith<$Res> {
  __$MaterialTypeUpdateModelCopyWithImpl(this._self, this._then);

  final _MaterialTypeUpdateModel _self;
  final $Res Function(_MaterialTypeUpdateModel) _then;

/// Create a copy of MaterialTypeUpdateModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,}) {
  return _then(_MaterialTypeUpdateModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

MaterialModel _$MaterialModelFromJson(
  Map<String, dynamic> json
) {
    return _MaterialEntryModel.fromJson(
      json
    );
}

/// @nodoc
mixin _$MaterialModel {

 int get id; String get partyNumber; String get fromUser; String get fromUserRole; String get toUser; String get toUserRole; String get acceptedUser; String get acceptedUserRole; num get width; num get thickness; bool get hasPatterns; String get colorTitle; String get colorHex; num get quantity; String get unit; DateTime get date; String get status;
/// Create a copy of MaterialModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MaterialModelCopyWith<MaterialModel> get copyWith => _$MaterialModelCopyWithImpl<MaterialModel>(this as MaterialModel, _$identity);

  /// Serializes this MaterialModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MaterialModel&&(identical(other.id, id) || other.id == id)&&(identical(other.partyNumber, partyNumber) || other.partyNumber == partyNumber)&&(identical(other.fromUser, fromUser) || other.fromUser == fromUser)&&(identical(other.fromUserRole, fromUserRole) || other.fromUserRole == fromUserRole)&&(identical(other.toUser, toUser) || other.toUser == toUser)&&(identical(other.toUserRole, toUserRole) || other.toUserRole == toUserRole)&&(identical(other.acceptedUser, acceptedUser) || other.acceptedUser == acceptedUser)&&(identical(other.acceptedUserRole, acceptedUserRole) || other.acceptedUserRole == acceptedUserRole)&&(identical(other.width, width) || other.width == width)&&(identical(other.thickness, thickness) || other.thickness == thickness)&&(identical(other.hasPatterns, hasPatterns) || other.hasPatterns == hasPatterns)&&(identical(other.colorTitle, colorTitle) || other.colorTitle == colorTitle)&&(identical(other.colorHex, colorHex) || other.colorHex == colorHex)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.unit, unit) || other.unit == unit)&&(identical(other.date, date) || other.date == date)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,partyNumber,fromUser,fromUserRole,toUser,toUserRole,acceptedUser,acceptedUserRole,width,thickness,hasPatterns,colorTitle,colorHex,quantity,unit,date,status);

@override
String toString() {
  return 'MaterialModel(id: $id, partyNumber: $partyNumber, fromUser: $fromUser, fromUserRole: $fromUserRole, toUser: $toUser, toUserRole: $toUserRole, acceptedUser: $acceptedUser, acceptedUserRole: $acceptedUserRole, width: $width, thickness: $thickness, hasPatterns: $hasPatterns, colorTitle: $colorTitle, colorHex: $colorHex, quantity: $quantity, unit: $unit, date: $date, status: $status)';
}


}

/// @nodoc
abstract mixin class $MaterialModelCopyWith<$Res>  {
  factory $MaterialModelCopyWith(MaterialModel value, $Res Function(MaterialModel) _then) = _$MaterialModelCopyWithImpl;
@useResult
$Res call({
 int id, String partyNumber, String fromUser, String fromUserRole, String toUser, String toUserRole, String acceptedUser, String acceptedUserRole, num width, num thickness, bool hasPatterns, String colorTitle, String colorHex, num quantity, String unit, DateTime date, String status
});




}
/// @nodoc
class _$MaterialModelCopyWithImpl<$Res>
    implements $MaterialModelCopyWith<$Res> {
  _$MaterialModelCopyWithImpl(this._self, this._then);

  final MaterialModel _self;
  final $Res Function(MaterialModel) _then;

/// Create a copy of MaterialModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? partyNumber = null,Object? fromUser = null,Object? fromUserRole = null,Object? toUser = null,Object? toUserRole = null,Object? acceptedUser = null,Object? acceptedUserRole = null,Object? width = null,Object? thickness = null,Object? hasPatterns = null,Object? colorTitle = null,Object? colorHex = null,Object? quantity = null,Object? unit = null,Object? date = null,Object? status = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,partyNumber: null == partyNumber ? _self.partyNumber : partyNumber // ignore: cast_nullable_to_non_nullable
as String,fromUser: null == fromUser ? _self.fromUser : fromUser // ignore: cast_nullable_to_non_nullable
as String,fromUserRole: null == fromUserRole ? _self.fromUserRole : fromUserRole // ignore: cast_nullable_to_non_nullable
as String,toUser: null == toUser ? _self.toUser : toUser // ignore: cast_nullable_to_non_nullable
as String,toUserRole: null == toUserRole ? _self.toUserRole : toUserRole // ignore: cast_nullable_to_non_nullable
as String,acceptedUser: null == acceptedUser ? _self.acceptedUser : acceptedUser // ignore: cast_nullable_to_non_nullable
as String,acceptedUserRole: null == acceptedUserRole ? _self.acceptedUserRole : acceptedUserRole // ignore: cast_nullable_to_non_nullable
as String,width: null == width ? _self.width : width // ignore: cast_nullable_to_non_nullable
as num,thickness: null == thickness ? _self.thickness : thickness // ignore: cast_nullable_to_non_nullable
as num,hasPatterns: null == hasPatterns ? _self.hasPatterns : hasPatterns // ignore: cast_nullable_to_non_nullable
as bool,colorTitle: null == colorTitle ? _self.colorTitle : colorTitle // ignore: cast_nullable_to_non_nullable
as String,colorHex: null == colorHex ? _self.colorHex : colorHex // ignore: cast_nullable_to_non_nullable
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

class _MaterialEntryModel implements MaterialModel {
  const _MaterialEntryModel({required this.id, required this.partyNumber, required this.fromUser, required this.fromUserRole, required this.toUser, required this.toUserRole, required this.acceptedUser, required this.acceptedUserRole, required this.width, required this.thickness, required this.hasPatterns, required this.colorTitle, required this.colorHex, required this.quantity, required this.unit, required this.date, required this.status});
  factory _MaterialEntryModel.fromJson(Map<String, dynamic> json) => _$MaterialEntryModelFromJson(json);

@override final  int id;
@override final  String partyNumber;
@override final  String fromUser;
@override final  String fromUserRole;
@override final  String toUser;
@override final  String toUserRole;
@override final  String acceptedUser;
@override final  String acceptedUserRole;
@override final  num width;
@override final  num thickness;
@override final  bool hasPatterns;
@override final  String colorTitle;
@override final  String colorHex;
@override final  num quantity;
@override final  String unit;
@override final  DateTime date;
@override final  String status;

/// Create a copy of MaterialModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MaterialEntryModelCopyWith<_MaterialEntryModel> get copyWith => __$MaterialEntryModelCopyWithImpl<_MaterialEntryModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MaterialEntryModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MaterialEntryModel&&(identical(other.id, id) || other.id == id)&&(identical(other.partyNumber, partyNumber) || other.partyNumber == partyNumber)&&(identical(other.fromUser, fromUser) || other.fromUser == fromUser)&&(identical(other.fromUserRole, fromUserRole) || other.fromUserRole == fromUserRole)&&(identical(other.toUser, toUser) || other.toUser == toUser)&&(identical(other.toUserRole, toUserRole) || other.toUserRole == toUserRole)&&(identical(other.acceptedUser, acceptedUser) || other.acceptedUser == acceptedUser)&&(identical(other.acceptedUserRole, acceptedUserRole) || other.acceptedUserRole == acceptedUserRole)&&(identical(other.width, width) || other.width == width)&&(identical(other.thickness, thickness) || other.thickness == thickness)&&(identical(other.hasPatterns, hasPatterns) || other.hasPatterns == hasPatterns)&&(identical(other.colorTitle, colorTitle) || other.colorTitle == colorTitle)&&(identical(other.colorHex, colorHex) || other.colorHex == colorHex)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.unit, unit) || other.unit == unit)&&(identical(other.date, date) || other.date == date)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,partyNumber,fromUser,fromUserRole,toUser,toUserRole,acceptedUser,acceptedUserRole,width,thickness,hasPatterns,colorTitle,colorHex,quantity,unit,date,status);

@override
String toString() {
  return 'MaterialModel(id: $id, partyNumber: $partyNumber, fromUser: $fromUser, fromUserRole: $fromUserRole, toUser: $toUser, toUserRole: $toUserRole, acceptedUser: $acceptedUser, acceptedUserRole: $acceptedUserRole, width: $width, thickness: $thickness, hasPatterns: $hasPatterns, colorTitle: $colorTitle, colorHex: $colorHex, quantity: $quantity, unit: $unit, date: $date, status: $status)';
}


}

/// @nodoc
abstract mixin class _$MaterialEntryModelCopyWith<$Res> implements $MaterialModelCopyWith<$Res> {
  factory _$MaterialEntryModelCopyWith(_MaterialEntryModel value, $Res Function(_MaterialEntryModel) _then) = __$MaterialEntryModelCopyWithImpl;
@override @useResult
$Res call({
 int id, String partyNumber, String fromUser, String fromUserRole, String toUser, String toUserRole, String acceptedUser, String acceptedUserRole, num width, num thickness, bool hasPatterns, String colorTitle, String colorHex, num quantity, String unit, DateTime date, String status
});




}
/// @nodoc
class __$MaterialEntryModelCopyWithImpl<$Res>
    implements _$MaterialEntryModelCopyWith<$Res> {
  __$MaterialEntryModelCopyWithImpl(this._self, this._then);

  final _MaterialEntryModel _self;
  final $Res Function(_MaterialEntryModel) _then;

/// Create a copy of MaterialModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? partyNumber = null,Object? fromUser = null,Object? fromUserRole = null,Object? toUser = null,Object? toUserRole = null,Object? acceptedUser = null,Object? acceptedUserRole = null,Object? width = null,Object? thickness = null,Object? hasPatterns = null,Object? colorTitle = null,Object? colorHex = null,Object? quantity = null,Object? unit = null,Object? date = null,Object? status = null,}) {
  return _then(_MaterialEntryModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,partyNumber: null == partyNumber ? _self.partyNumber : partyNumber // ignore: cast_nullable_to_non_nullable
as String,fromUser: null == fromUser ? _self.fromUser : fromUser // ignore: cast_nullable_to_non_nullable
as String,fromUserRole: null == fromUserRole ? _self.fromUserRole : fromUserRole // ignore: cast_nullable_to_non_nullable
as String,toUser: null == toUser ? _self.toUser : toUser // ignore: cast_nullable_to_non_nullable
as String,toUserRole: null == toUserRole ? _self.toUserRole : toUserRole // ignore: cast_nullable_to_non_nullable
as String,acceptedUser: null == acceptedUser ? _self.acceptedUser : acceptedUser // ignore: cast_nullable_to_non_nullable
as String,acceptedUserRole: null == acceptedUserRole ? _self.acceptedUserRole : acceptedUserRole // ignore: cast_nullable_to_non_nullable
as String,width: null == width ? _self.width : width // ignore: cast_nullable_to_non_nullable
as num,thickness: null == thickness ? _self.thickness : thickness // ignore: cast_nullable_to_non_nullable
as num,hasPatterns: null == hasPatterns ? _self.hasPatterns : hasPatterns // ignore: cast_nullable_to_non_nullable
as bool,colorTitle: null == colorTitle ? _self.colorTitle : colorTitle // ignore: cast_nullable_to_non_nullable
as String,colorHex: null == colorHex ? _self.colorHex : colorHex // ignore: cast_nullable_to_non_nullable
as String,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as num,unit: null == unit ? _self.unit : unit // ignore: cast_nullable_to_non_nullable
as String,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
