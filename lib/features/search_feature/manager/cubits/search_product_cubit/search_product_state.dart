part of 'search_product_cubit.dart';

@immutable
sealed class SearchProductState {}

final class SearchProductInitial extends SearchProductState {}

final class SearchProductSuccess extends SearchProductState {
  final String categoryName;

  SearchProductSuccess({required this.categoryName});
}
