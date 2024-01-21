part of 'card_products_cubit.dart';

@immutable
sealed class CardProductsState {}

final class CardProductsInitial extends CardProductsState {}

final class CardProductsSuccess extends CardProductsState {
  final List<ProductModel> products;
  final double totalPrice;
  CardProductsSuccess({
    required this.products,
    required this.totalPrice,
  });
}
