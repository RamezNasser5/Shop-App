part of 'categories_cubit.dart';

@immutable
sealed class CategoriesState {}

final class CategoriesInitial extends CategoriesState {
  final String categoryName;

  CategoriesInitial({required this.categoryName});
}

final class CategoriesSuccess extends CategoriesState {
  final String categoryName;

  CategoriesSuccess({
    required this.categoryName,
  });
}
