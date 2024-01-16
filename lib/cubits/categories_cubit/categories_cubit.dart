import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

part 'categories_state.dart';

class CategoriesCubit extends Cubit<CategoriesState> {
  CategoriesCubit() : super(CategoriesInitial(categoryName: 'IceTeas'));
  changeCategoryName({
    required String newCategoryName,
  }) {
    emit(CategoriesSuccess(
      categoryName: newCategoryName,
    ));
  }
}
