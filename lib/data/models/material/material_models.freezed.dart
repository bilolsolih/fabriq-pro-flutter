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

/// @nodoc
mixin _$MaterialListModel {

 int get id; String get title; num get totalInKg; num get totalInMeter; num get totalInPack;
/// Create a copy of MaterialListModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MaterialListModelCopyWith<MaterialListModel> get copyWith => _$MaterialListModelCopyWithImpl<MaterialListModel>(this as MaterialListModel, _$identity);

  /// Serializes this MaterialListModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MaterialListModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.totalInKg, totalInKg) || other.totalInKg == totalInKg)&&(identical(other.totalInMeter, totalInMeter) || other.totalInMeter == totalInMeter)&&(identical(other.totalInPack, totalInPack) || other.totalInPack == totalInPack));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,totalInKg,totalInMeter,totalInPack);

@override
String toString() {
  return 'MaterialListModel(id: $id, title: $title, totalInKg: $totalInKg, totalInMeter: $totalInMeter, totalInPack: $totalInPack)';
}


}

/// @nodoc
abstract mixin class $MaterialListModelCopyWith<$Res>  {
  factory $MaterialListModelCopyWith(MaterialListModel value, $Res Function(MaterialListModel) _then) = _$MaterialListModelCopyWithImpl;
@useResult
$Res call({
 int id, String title, num totalInKg, num totalInMeter, num totalInPack
});




}
/// @nodoc
class _$MaterialListModelCopyWithImpl<$Res>
    implements $MaterialListModelCopyWith<$Res> {
  _$MaterialListModelCopyWithImpl(this._self, this._then);

  final MaterialListModel _self;
  final $Res Function(MaterialListModel) _then;

/// Create a copy of MaterialListModel
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

class _MaterialListModel implements MaterialListModel {
  const _MaterialListModel({required this.id, required this.title, required this.totalInKg, required this.totalInMeter, required this.totalInPack});
  factory _MaterialListModel.fromJson(Map<String, dynamic> json) => _$MaterialListModelFromJson(json);

@override final  int id;
@override final  String title;
@override final  num totalInKg;
@override final  num totalInMeter;
@override final  num totalInPack;

/// Create a copy of MaterialListModel
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
  return 'MaterialListModel(id: $id, title: $title, totalInKg: $totalInKg, totalInMeter: $totalInMeter, totalInPack: $totalInPack)';
}


}

/// @nodoc
abstract mixin class _$MaterialListModelCopyWith<$Res> implements $MaterialListModelCopyWith<$Res> {
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

/// Create a copy of MaterialListModel
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
mixin _$MaterialCreateModel {

 String get title;
/// Create a copy of MaterialCreateModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MaterialCreateModelCopyWith<MaterialCreateModel> get copyWith => _$MaterialCreateModelCopyWithImpl<MaterialCreateModel>(this as MaterialCreateModel, _$identity);

  /// Serializes this MaterialCreateModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MaterialCreateModel&&(identical(other.title, title) || other.title == title));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title);

@override
String toString() {
  return 'MaterialCreateModel(title: $title)';
}


}

/// @nodoc
abstract mixin class $MaterialCreateModelCopyWith<$Res>  {
  factory $MaterialCreateModelCopyWith(MaterialCreateModel value, $Res Function(MaterialCreateModel) _then) = _$MaterialCreateModelCopyWithImpl;
@useResult
$Res call({
 String title
});




}
/// @nodoc
class _$MaterialCreateModelCopyWithImpl<$Res>
    implements $MaterialCreateModelCopyWith<$Res> {
  _$MaterialCreateModelCopyWithImpl(this._self, this._then);

  final MaterialCreateModel _self;
  final $Res Function(MaterialCreateModel) _then;

/// Create a copy of MaterialCreateModel
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

class _MaterialCreateModel implements MaterialCreateModel {
  const _MaterialCreateModel({required this.title});
  factory _MaterialCreateModel.fromJson(Map<String, dynamic> json) => _$MaterialCreateModelFromJson(json);

@override final  String title;

/// Create a copy of MaterialCreateModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MaterialCreateModelCopyWith<_MaterialCreateModel> get copyWith => __$MaterialCreateModelCopyWithImpl<_MaterialCreateModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MaterialCreateModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MaterialCreateModel&&(identical(other.title, title) || other.title == title));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title);

@override
String toString() {
  return 'MaterialCreateModel(title: $title)';
}


}

/// @nodoc
abstract mixin class _$MaterialCreateModelCopyWith<$Res> implements $MaterialCreateModelCopyWith<$Res> {
  factory _$MaterialCreateModelCopyWith(_MaterialCreateModel value, $Res Function(_MaterialCreateModel) _then) = __$MaterialCreateModelCopyWithImpl;
@override @useResult
$Res call({
 String title
});




}
/// @nodoc
class __$MaterialCreateModelCopyWithImpl<$Res>
    implements _$MaterialCreateModelCopyWith<$Res> {
  __$MaterialCreateModelCopyWithImpl(this._self, this._then);

  final _MaterialCreateModel _self;
  final $Res Function(_MaterialCreateModel) _then;

/// Create a copy of MaterialCreateModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = null,}) {
  return _then(_MaterialCreateModel(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$MaterialUpdateModel {

@JsonKey(includeToJson: false) int get id; String get title;
/// Create a copy of MaterialUpdateModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MaterialUpdateModelCopyWith<MaterialUpdateModel> get copyWith => _$MaterialUpdateModelCopyWithImpl<MaterialUpdateModel>(this as MaterialUpdateModel, _$identity);

  /// Serializes this MaterialUpdateModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MaterialUpdateModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title);

@override
String toString() {
  return 'MaterialUpdateModel(id: $id, title: $title)';
}


}

/// @nodoc
abstract mixin class $MaterialUpdateModelCopyWith<$Res>  {
  factory $MaterialUpdateModelCopyWith(MaterialUpdateModel value, $Res Function(MaterialUpdateModel) _then) = _$MaterialUpdateModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(includeToJson: false) int id, String title
});




}
/// @nodoc
class _$MaterialUpdateModelCopyWithImpl<$Res>
    implements $MaterialUpdateModelCopyWith<$Res> {
  _$MaterialUpdateModelCopyWithImpl(this._self, this._then);

  final MaterialUpdateModel _self;
  final $Res Function(MaterialUpdateModel) _then;

/// Create a copy of MaterialUpdateModel
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

class _MaterialUpdateModel implements MaterialUpdateModel {
  const _MaterialUpdateModel({@JsonKey(includeToJson: false) required this.id, required this.title});
  factory _MaterialUpdateModel.fromJson(Map<String, dynamic> json) => _$MaterialUpdateModelFromJson(json);

@override@JsonKey(includeToJson: false) final  int id;
@override final  String title;

/// Create a copy of MaterialUpdateModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MaterialUpdateModelCopyWith<_MaterialUpdateModel> get copyWith => __$MaterialUpdateModelCopyWithImpl<_MaterialUpdateModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MaterialUpdateModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MaterialUpdateModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title);

@override
String toString() {
  return 'MaterialUpdateModel(id: $id, title: $title)';
}


}

/// @nodoc
abstract mixin class _$MaterialUpdateModelCopyWith<$Res> implements $MaterialUpdateModelCopyWith<$Res> {
  factory _$MaterialUpdateModelCopyWith(_MaterialUpdateModel value, $Res Function(_MaterialUpdateModel) _then) = __$MaterialUpdateModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(includeToJson: false) int id, String title
});




}
/// @nodoc
class __$MaterialUpdateModelCopyWithImpl<$Res>
    implements _$MaterialUpdateModelCopyWith<$Res> {
  __$MaterialUpdateModelCopyWithImpl(this._self, this._then);

  final _MaterialUpdateModel _self;
  final $Res Function(_MaterialUpdateModel) _then;

/// Create a copy of MaterialUpdateModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,}) {
  return _then(_MaterialUpdateModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
