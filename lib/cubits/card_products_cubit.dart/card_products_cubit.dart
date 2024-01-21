import 'package:bloc/bloc.dart';
import 'package:coffee_app/models/product_model.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

part 'card_products_state.dart';

class CardProductsCubit extends Cubit<CardProductsState> {
  CardProductsCubit() : super(CardProductsInitial());

  fetchAllProducts() {
    var productBox = Hive.box<ProductModel>('product');
    var products = productBox.values.toList();
    double totalPrice = 0.0;
    for (var i = 0; i < products.length; i++) {
      totalPrice += double.parse(products[i].price);
    }
    totalPrice = (totalPrice * 100).round() / 100;
    emit(CardProductsSuccess(
      products: products,
      totalPrice: totalPrice,
    ));
  }
}
