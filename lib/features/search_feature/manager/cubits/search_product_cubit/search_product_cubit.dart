import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

part 'search_product_state.dart';

class SearchProductCubit extends Cubit<SearchProductState> {
  SearchProductCubit() : super(SearchProductInitial());

  getCategoryName({required String newCategoryName}) {
    emit(SearchProductSuccess(categoryName: newCategoryName));
  }
}
