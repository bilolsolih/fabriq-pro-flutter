import 'package:fabriq_pro/core/client.dart';
import 'package:fabriq_pro/data/models/product/product_model.dart';
import 'package:fabriq_pro/data/models/product/product_model_info/product_model_info.dart';
import 'package:fabriq_pro/data/models/product/product_type/product_type_model.dart';

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

  Future<List<ProductTypeModel>> fetchProductTypes({int? page, int? limit}) async {
    final rawProductType = await client.genericGetRequest<List<dynamic>>(
      "/product-types/list",
      queryParams: {"page": page ?? "", 'limit': limit ?? ""},
    );
    return rawProductType.map((type) => ProductTypeModel.fromJson(type)).toList();
  }

  Future<List<ProductModelInfo>> fetchProductModels({
    int? page,
    int? limit,
    int? productTypeId,
  }) async {
    final rawProductModel = await client.genericGetRequest<List<dynamic>>(
      '/product-models/list',
      queryParams: {'ProductTypeId': productTypeId ?? "", "page": page ?? "", 'limit': limit ?? ""},
    );
    return rawProductModel.map((model) => ProductModelInfo.fromJson(model)).toList();
  }
}
