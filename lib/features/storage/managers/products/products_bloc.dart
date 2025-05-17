import 'package:fabriq_pro/data/repositories/product_repository.dart';
import 'package:fabriq_pro/features/storage/managers/products/products_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'products_events.dart';

class ProductsBloc extends Bloc<ProductsEvents, ProductsState> {
  ProductsBloc({required ProductRepository productRepo})
    : _productRepo = productRepo,
      super(ProductsState.initial()) {
    on<ProductsLoad>(_onLoad);
    on<ProductModelsLoad>(_onProductModelLoad);
    add(ProductModelsLoad(limit: 10, page: 1, id: 1));
    add(ProductsLoad(page: 1, limit: 12));
  }

  final ProductRepository _productRepo;

  Future _onLoad(ProductsLoad event, Emitter<ProductsState> emit) async {
    emit(state.copyWith(status: ProductsStatus.loading));
    final products = await _productRepo.fetchProducts(page: event.page, limit: event.limit);
    final productTypes = await _productRepo.fetchProductTypes(page: event.page, limit: event.limit);
    emit(
      state.copyWith(
        status: ProductsStatus.success,
        products: products,
        productTypes: productTypes,
      ),
    );
  }

  Future _onProductModelLoad(ProductModelsLoad event, Emitter<ProductsState> emit) async {
    emit(state.copyWith(status: ProductsStatus.loading));
    final productModels = await _productRepo.fetchProductModels(
      page: event.page,
      limit: event.limit,
      productTypeId: event.id,
    );
    emit(state.copyWith(status: ProductsStatus.success, productModels: productModels));
  }
}
