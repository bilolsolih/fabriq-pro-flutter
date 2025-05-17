import 'package:fabriq_pro/core/client.dart';
import 'package:fabriq_pro/data/models/product/product_model.dart';

class ProductRepository {
  ProductRepository({required this.client});

  final ApiClient client;

  Future<List<Product>> fetchProducts({int? page, int? limit}) async {
    final rawProduct = await client.genericGetRequest<List<dynamic>>(
      '/products/list-all-products',
      queryParams: {"page": page ?? "", "limit": limit ?? ""},
    );
    return rawProduct.map((product) => Product.fromJson(product)).toList();
  }
}
