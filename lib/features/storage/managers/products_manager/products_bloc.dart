import 'package:fabriq_pro/data/repositories/product_repository.dart';
import 'package:fabriq_pro/features/storage/managers/products_manager/products_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'products_events.dart';
class ProductsBloc extends Bloc<ProductsEvents, ProductsState>{
  ProductsBloc({required ProductRepository productRepo}): _productRepo = productRepo, super(ProductsState.initial()){
    on<ProductsLoad>(_onLoad);
    add(ProductsLoad(page: 1, limit: 12));
  }

  final ProductRepository _productRepo;

  Future _onLoad(ProductsLoad event, Emitter<ProductsState> emit)async{
    emit(state.copyWith(status: ProductsStatus.loading));
    final products = await _productRepo.fetchProducts(page: event.page, limit: event.limit);
    emit(state.copyWith(status: ProductsStatus.success, products: products));
  }
}