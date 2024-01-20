import 'package:bloc/bloc.dart';
import 'package:coffee_app/models/product_model.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

part 'add_product_state.dart';

class AddProductCubit extends Cubit<AddProductState> {
  AddProductCubit() : super(AddProductInitial());

  addProduct(ProductModel productModel) {
    var products = Hive.box('product');
    products.add(productModel);
  }
}
