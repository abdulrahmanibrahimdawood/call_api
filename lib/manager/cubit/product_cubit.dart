import 'package:api_call/models/product_model.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'product_state.dart';

class ProductCubit extends Cubit<ProductState> {
  ProductCubit() : super(ProductLoading());
}
