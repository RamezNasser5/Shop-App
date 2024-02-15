// ignore_for_file: avoid_print

import 'package:bloc/bloc.dart';
import 'package:coffee_app/core/models/product_model.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

part 'add_product_state.dart';

class AddProductCubit extends Cubit<AddProductState> {
  AddProductCubit() : super(AddProductInitial());

  addProduct(ProductModel productModel) async {
    var productsBox = await Hive.openBox<ProductModel>('product');

    if (productsBox.values.any(
        (existingProduct) => existingProduct.title == productModel.title)) {
      print('Product already exists in the box.');
    } else {
      productsBox.add(productModel);
      print('Product added successfully.');
      emit(AddProductSuccess());
    }
  }
}
