import 'package:bloc/bloc.dart';
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
  changeCategoryName({
    required String newCategoryName,
    required int newFlag1,
    required int newFlag2,
    required int newFlag3,
    required int newFlag4,
    required int newFlag5,
  }) {
    emit(CategoriesSuccess(
      categoryName: newCategoryName,
      flag1: newFlag1,
      flag2: newFlag2,
      flag3: newFlag3,
      flag4: newFlag4,
      flag5: newFlag5,
    ));
  }
}
