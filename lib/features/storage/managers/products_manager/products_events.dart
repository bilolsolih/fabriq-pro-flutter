part of'products_bloc.dart';
sealed class ProductsEvents{}

 final class ProductsLoad extends ProductsEvents{
  final int page, limit;

  ProductsLoad({required this.page, required this.limit});
 }