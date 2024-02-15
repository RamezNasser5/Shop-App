import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:coffee_app/core/models/product_model.dart';
import 'package:flutter/material.dart';

part 'categories_state.dart';

class CategoriesCubit extends Cubit<CategoriesState> {
  CategoriesCubit()
      : super(CategoriesInitial(
          categoryName: 'IceTeas',
          flag1: 0xffFFFFFF,
          flag2: 0xff000000,
          flag3: 0xff000000,
          flag4: 0xff000000,
          flag5: 0xff000000,
        ));

  getProducts({
    String? newCategoryName,
    int? newFlag1,
    int? newFlag2,
    int? newFlag3,
    int? newFlag4,
    int? newFlag5,
  }) {
    try {
      List<ProductModel> products = [];
      FirebaseFirestore.instance
          .collection(newCategoryName ?? 'IceTeas')
          .snapshots()
          .listen((event) {
        for (var doc in event.docs) {
          products.add(ProductModel.fromFirestore(doc));
        }
        emit(
          CategoriesSuccess(
            products: products,
            categoryName: newCategoryName ?? 'IceTeas',
            flag1: newFlag1 ?? 0xffFFFFFF,
            flag2: newFlag2 ?? 0xff000000,
            flag3: newFlag3 ?? 0xff000000,
            flag4: newFlag4 ?? 0xff000000,
            flag5: newFlag5 ?? 0xff000000,
          ),
        );
      });
    } catch (e) {
      emit(CategoriesFailure(errorMessage: e.toString()));
    }
  }
}
