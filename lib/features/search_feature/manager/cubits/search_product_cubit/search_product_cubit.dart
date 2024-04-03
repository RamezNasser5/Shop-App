import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:coffee_app/core/models/product_model.dart';
import 'package:flutter/material.dart';

part 'search_product_state.dart';

class SearchProductCubit extends Cubit<SearchProductState> {
  SearchProductCubit() : super(SearchProductInitial());

  Future<void> getCategoryName({required String newCategoryName}) async {
  emit(SearchProductLoading());
  try {
    List<ProductModel> products = [];
    var querySnapshot = await FirebaseFirestore.instance.collection(newCategoryName).get();
    for (var doc in querySnapshot.docs) {
      products.add(ProductModel.fromFirestore(doc));
    }
    emit(SearchProductSuccess(products: products, categoryName: newCategoryName));
  } catch (e) {
    emit(SearchProductFailure(errorMessage: e.toString()));
  }
}

  // Future<void> getCategoryName({required String newCategoryName}) async {
  //   emit(SearchProductLoading());
  //   try {
  //     List<ProductModel> products = [];
  //     FirebaseFirestore.instance.collection(newCategoryName).snapshots().listen(
  //       (event) {
  //         for (var doc in event.docs) {
  //           products.add(
  //             ProductModel.fromFirestore(doc),
  //           );
  //         }
  //       },
  //     );
  //     emit(
  //       SearchProductSuccess(
  //         products: products,
  //         categoryName: newCategoryName,
  //       ),
  //     );
  //   } catch (e) {
  //     emit(
  //       SearchProductFailure(
  //         errorMessage: e.toString(),
  //       ),
  //     );
  //   }
  // }
}
