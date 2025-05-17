// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_type_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ProductTypeModel {

 int get id; String get title;
/// Create a copy of ProductTypeModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductTypeModelCopyWith<ProductTypeModel> get copyWith => _$ProductTypeModelCopyWithImpl<ProductTypeModel>(this as ProductTypeModel, _$identity);

  /// Serializes this ProductTypeModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductTypeModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title);

@override
String toString() {
  return 'ProductTypeModel(id: $id, title: $title)';
}


}

/// @nodoc
abstract mixin class $ProductTypeModelCopyWith<$Res>  {
  factory $ProductTypeModelCopyWith(ProductTypeModel value, $Res Function(ProductTypeModel) _then) = _$ProductTypeModelCopyWithImpl;
@useResult
$Res call({
 int id, String title
});




}
/// @nodoc
class _$ProductTypeModelCopyWithImpl<$Res>
    implements $ProductTypeModelCopyWith<$Res> {
  _$ProductTypeModelCopyWithImpl(this._self, this._then);

  final ProductTypeModel _self;
  final $Res Function(ProductTypeModel) _then;

/// Create a copy of ProductTypeModel
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

class _ProductTypeModel implements ProductTypeModel {
  const _ProductTypeModel({required this.id, required this.title});
  factory _ProductTypeModel.fromJson(Map<String, dynamic> json) => _$ProductTypeModelFromJson(json);

@override final  int id;
@override final  String title;

/// Create a copy of ProductTypeModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductTypeModelCopyWith<_ProductTypeModel> get copyWith => __$ProductTypeModelCopyWithImpl<_ProductTypeModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProductTypeModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductTypeModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title);

@override
String toString() {
  return 'ProductTypeModel(id: $id, title: $title)';
}


}

/// @nodoc
abstract mixin class _$ProductTypeModelCopyWith<$Res> implements $ProductTypeModelCopyWith<$Res> {
  factory _$ProductTypeModelCopyWith(_ProductTypeModel value, $Res Function(_ProductTypeModel) _then) = __$ProductTypeModelCopyWithImpl;
@override @useResult
$Res call({
 int id, String title
});




}
/// @nodoc
class __$ProductTypeModelCopyWithImpl<$Res>
    implements _$ProductTypeModelCopyWith<$Res> {
  __$ProductTypeModelCopyWithImpl(this._self, this._then);

  final _ProductTypeModel _self;
  final $Res Function(_ProductTypeModel) _then;

/// Create a copy of ProductTypeModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,}) {
  return _then(_ProductTypeModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
