// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'products_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ProductsState {

 List<Product> get products; ProductsStatus get status; List<ProductTypeModel> get productTypes; List<ProductModelInfo> get productModels;
/// Create a copy of ProductsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductsStateCopyWith<ProductsState> get copyWith => _$ProductsStateCopyWithImpl<ProductsState>(this as ProductsState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductsState&&const DeepCollectionEquality().equals(other.products, products)&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.productTypes, productTypes)&&const DeepCollectionEquality().equals(other.productModels, productModels));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(products),status,const DeepCollectionEquality().hash(productTypes),const DeepCollectionEquality().hash(productModels));

@override
String toString() {
  return 'ProductsState(products: $products, status: $status, productTypes: $productTypes, productModels: $productModels)';
}


}

/// @nodoc
abstract mixin class $ProductsStateCopyWith<$Res>  {
  factory $ProductsStateCopyWith(ProductsState value, $Res Function(ProductsState) _then) = _$ProductsStateCopyWithImpl;
@useResult
$Res call({
 List<Product> products, ProductsStatus status, List<ProductTypeModel> productTypes, List<ProductModelInfo> productModels
});




}
/// @nodoc
class _$ProductsStateCopyWithImpl<$Res>
    implements $ProductsStateCopyWith<$Res> {
  _$ProductsStateCopyWithImpl(this._self, this._then);

  final ProductsState _self;
  final $Res Function(ProductsState) _then;

/// Create a copy of ProductsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? products = null,Object? status = null,Object? productTypes = null,Object? productModels = null,}) {
  return _then(_self.copyWith(
products: null == products ? _self.products : products // ignore: cast_nullable_to_non_nullable
as List<Product>,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ProductsStatus,productTypes: null == productTypes ? _self.productTypes : productTypes // ignore: cast_nullable_to_non_nullable
as List<ProductTypeModel>,productModels: null == productModels ? _self.productModels : productModels // ignore: cast_nullable_to_non_nullable
as List<ProductModelInfo>,
  ));
}

}


/// @nodoc


class _ProductsState implements ProductsState {
  const _ProductsState({required final  List<Product> products, required this.status, required final  List<ProductTypeModel> productTypes, required final  List<ProductModelInfo> productModels}): _products = products,_productTypes = productTypes,_productModels = productModels;
  

 final  List<Product> _products;
@override List<Product> get products {
  if (_products is EqualUnmodifiableListView) return _products;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_products);
}

@override final  ProductsStatus status;
 final  List<ProductTypeModel> _productTypes;
@override List<ProductTypeModel> get productTypes {
  if (_productTypes is EqualUnmodifiableListView) return _productTypes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_productTypes);
}

 final  List<ProductModelInfo> _productModels;
@override List<ProductModelInfo> get productModels {
  if (_productModels is EqualUnmodifiableListView) return _productModels;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_productModels);
}


/// Create a copy of ProductsState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductsStateCopyWith<_ProductsState> get copyWith => __$ProductsStateCopyWithImpl<_ProductsState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductsState&&const DeepCollectionEquality().equals(other._products, _products)&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other._productTypes, _productTypes)&&const DeepCollectionEquality().equals(other._productModels, _productModels));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_products),status,const DeepCollectionEquality().hash(_productTypes),const DeepCollectionEquality().hash(_productModels));

@override
String toString() {
  return 'ProductsState(products: $products, status: $status, productTypes: $productTypes, productModels: $productModels)';
}


}

/// @nodoc
abstract mixin class _$ProductsStateCopyWith<$Res> implements $ProductsStateCopyWith<$Res> {
  factory _$ProductsStateCopyWith(_ProductsState value, $Res Function(_ProductsState) _then) = __$ProductsStateCopyWithImpl;
@override @useResult
$Res call({
 List<Product> products, ProductsStatus status, List<ProductTypeModel> productTypes, List<ProductModelInfo> productModels
});




}
/// @nodoc
class __$ProductsStateCopyWithImpl<$Res>
    implements _$ProductsStateCopyWith<$Res> {
  __$ProductsStateCopyWithImpl(this._self, this._then);

  final _ProductsState _self;
  final $Res Function(_ProductsState) _then;

/// Create a copy of ProductsState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? products = null,Object? status = null,Object? productTypes = null,Object? productModels = null,}) {
  return _then(_ProductsState(
products: null == products ? _self._products : products // ignore: cast_nullable_to_non_nullable
as List<Product>,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ProductsStatus,productTypes: null == productTypes ? _self._productTypes : productTypes // ignore: cast_nullable_to_non_nullable
as List<ProductTypeModel>,productModels: null == productModels ? _self._productModels : productModels // ignore: cast_nullable_to_non_nullable
as List<ProductModelInfo>,
  ));
}


}

// dart format on
