// ignore_for_file: avoid_print

import 'package:bloc/bloc.dart';
import 'package:coffee_app/models/product_model.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

part 'add_product_state.dart';

class AddProductCubit extends Cubit<AddProductState> {
  AddProductCubit() : super(AddProductInitial());

  addProduct(ProductModel productModel) async {
    var productsBox = await Hive.openBox<ProductModel>('product');

    // Check if the product already exists in the box based on the product name
    if (productsBox.values.any(
        (existingProduct) => existingProduct.title == productModel.title)) {
      print('Product already exists in the box.');
    } else {
      // If the product doesn't exist, add it to the box
      productsBox.add(productModel);
      print('Product added successfully.');
      emit(AddProductSuccess());
    }
  }
}
