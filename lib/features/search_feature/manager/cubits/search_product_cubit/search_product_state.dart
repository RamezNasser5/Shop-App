part of 'search_product_cubit.dart';

@immutable
sealed class SearchProductState {}

final class SearchProductInitial extends SearchProductState {}

final class SearchProductSuccess extends SearchProductState {
  final String categoryName;
  final List<ProductModel> products;

  SearchProductSuccess({
    required this.categoryName,
    required this.products,
  });
}

final class SearchProductLoading extends SearchProductState {}

final class SearchProductFailure extends SearchProductState {
  final String errorMessage;

  SearchProductFailure({required this.errorMessage});
}
