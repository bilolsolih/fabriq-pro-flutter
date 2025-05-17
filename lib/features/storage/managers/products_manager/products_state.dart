import 'package:fabriq_pro/data/models/product/product_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'products_state.freezed.dart';

enum ProductsStatus { initial, loading, success, error }

@freezed
abstract class ProductsState with _$ProductsState {
  const factory ProductsState({required List<Product> products, required ProductsStatus status}) =
      _ProductsState;

  factory ProductsState.initial(){
    return ProductsState(products: [], status: ProductsStatus.initial);
  }
}
