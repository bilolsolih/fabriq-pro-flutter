part of 'products_bloc.dart';

sealed class ProductsEvents {}

final class ProductsLoad extends ProductsEvents {
  final int page, limit;

  ProductsLoad({required this.page, required this.limit});
}

final class ProductModelsLoad extends ProductsEvents {
  final int limit, page, id;

  ProductModelsLoad({required this.limit, required this.page, required this.id});
}
