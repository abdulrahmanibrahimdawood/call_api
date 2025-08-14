import 'package:api_call/models/product_model.dart';
import 'package:api_call/repos/product_repo.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'product_state.dart';

class ProductCubit extends Cubit<ProductState> {
  ProductCubit() : super(ProductLoading());
  final ProductRepo productRepo = ProductRepo();

  getProductData() async {
    try {
      final products = await productRepo.getProductData();
      emit(ProductLoaded(products));
    } on Exception catch (e) {
      emit(ProductError(errorMessage: e.toString()));
    }
  }
}
