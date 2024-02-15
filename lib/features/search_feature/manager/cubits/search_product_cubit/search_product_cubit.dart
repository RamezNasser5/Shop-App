import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:coffee_app/core/models/product_model.dart';
import 'package:flutter/material.dart';

part 'search_product_state.dart';

class SearchProductCubit extends Cubit<SearchProductState> {
  SearchProductCubit() : super(SearchProductInitial());

  getCategoryName({required String newCategoryName}) {
    emit(SearchProductLoading());
    try {
      List<ProductModel> products = [];
      FirebaseFirestore.instance.collection(newCategoryName).snapshots().listen(
        (event) {
          for (var doc in event.docs) {
            products.add(
              ProductModel.fromFirestore(doc),
            );
          }
        },
      );
      emit(
        SearchProductSuccess(
          products: products,
          categoryName: newCategoryName,
        ),
      );
    } catch (e) {
      emit(
        SearchProductFailure(
          errorMessage: e.toString(),
        ),
      );
    }
  }
}
