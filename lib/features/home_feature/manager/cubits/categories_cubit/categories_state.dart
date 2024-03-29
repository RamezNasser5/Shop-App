part of 'categories_cubit.dart';

@immutable
sealed class CategoriesState {}

final class CategoriesInitial extends CategoriesState {}

final class CategoriesSuccess extends CategoriesState {
  final String categoryName;
  final List<ProductModel> products;
  final int flag1;
  final int flag2;
  final int flag3;
  final int flag4;
  final int flag5;

  CategoriesSuccess({
    required this.products,
    required this.categoryName,
    required this.flag1,
    required this.flag2,
    required this.flag3,
    required this.flag4,
    required this.flag5,
  });
}

final class CategoriesFailure extends CategoriesState {
  final String errorMessage;

  CategoriesFailure({required this.errorMessage});
}
