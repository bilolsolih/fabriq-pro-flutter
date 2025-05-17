// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_model_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ProductModelInfo {

 int get id; String get title; String get colorTitle; String get colorHex; String get productType;
/// Create a copy of ProductModelInfo
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductModelInfoCopyWith<ProductModelInfo> get copyWith => _$ProductModelInfoCopyWithImpl<ProductModelInfo>(this as ProductModelInfo, _$identity);

  /// Serializes this ProductModelInfo to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductModelInfo&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.colorTitle, colorTitle) || other.colorTitle == colorTitle)&&(identical(other.colorHex, colorHex) || other.colorHex == colorHex)&&(identical(other.productType, productType) || other.productType == productType));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,colorTitle,colorHex,productType);

@override
String toString() {
  return 'ProductModelInfo(id: $id, title: $title, colorTitle: $colorTitle, colorHex: $colorHex, productType: $productType)';
}


}

/// @nodoc
abstract mixin class $ProductModelInfoCopyWith<$Res>  {
  factory $ProductModelInfoCopyWith(ProductModelInfo value, $Res Function(ProductModelInfo) _then) = _$ProductModelInfoCopyWithImpl;
@useResult
$Res call({
 int id, String title, String colorTitle, String colorHex, String productType
});




}
/// @nodoc
class _$ProductModelInfoCopyWithImpl<$Res>
    implements $ProductModelInfoCopyWith<$Res> {
  _$ProductModelInfoCopyWithImpl(this._self, this._then);

  final ProductModelInfo _self;
  final $Res Function(ProductModelInfo) _then;

/// Create a copy of ProductModelInfo
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? colorTitle = null,Object? colorHex = null,Object? productType = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,colorTitle: null == colorTitle ? _self.colorTitle : colorTitle // ignore: cast_nullable_to_non_nullable
as String,colorHex: null == colorHex ? _self.colorHex : colorHex // ignore: cast_nullable_to_non_nullable
as String,productType: null == productType ? _self.productType : productType // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _ProductModelInfo implements ProductModelInfo {
  const _ProductModelInfo({required this.id, required this.title, required this.colorTitle, required this.colorHex, required this.productType});
  factory _ProductModelInfo.fromJson(Map<String, dynamic> json) => _$ProductModelInfoFromJson(json);

@override final  int id;
@override final  String title;
@override final  String colorTitle;
@override final  String colorHex;
@override final  String productType;

/// Create a copy of ProductModelInfo
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductModelInfoCopyWith<_ProductModelInfo> get copyWith => __$ProductModelInfoCopyWithImpl<_ProductModelInfo>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProductModelInfoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductModelInfo&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.colorTitle, colorTitle) || other.colorTitle == colorTitle)&&(identical(other.colorHex, colorHex) || other.colorHex == colorHex)&&(identical(other.productType, productType) || other.productType == productType));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,colorTitle,colorHex,productType);

@override
String toString() {
  return 'ProductModelInfo(id: $id, title: $title, colorTitle: $colorTitle, colorHex: $colorHex, productType: $productType)';
}


}

/// @nodoc
abstract mixin class _$ProductModelInfoCopyWith<$Res> implements $ProductModelInfoCopyWith<$Res> {
  factory _$ProductModelInfoCopyWith(_ProductModelInfo value, $Res Function(_ProductModelInfo) _then) = __$ProductModelInfoCopyWithImpl;
@override @useResult
$Res call({
 int id, String title, String colorTitle, String colorHex, String productType
});




}
/// @nodoc
class __$ProductModelInfoCopyWithImpl<$Res>
    implements _$ProductModelInfoCopyWith<$Res> {
  __$ProductModelInfoCopyWithImpl(this._self, this._then);

  final _ProductModelInfo _self;
  final $Res Function(_ProductModelInfo) _then;

/// Create a copy of ProductModelInfo
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? colorTitle = null,Object? colorHex = null,Object? productType = null,}) {
  return _then(_ProductModelInfo(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,colorTitle: null == colorTitle ? _self.colorTitle : colorTitle // ignore: cast_nullable_to_non_nullable
as String,colorHex: null == colorHex ? _self.colorHex : colorHex // ignore: cast_nullable_to_non_nullable
as String,productType: null == productType ? _self.productType : productType // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
