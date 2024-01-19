import 'package:cloud_firestore/cloud_firestore.dart';

class ProductModel {
  final String title;
  final String description;
  final String price;
  final String rate;
  final String urlImage;

  const ProductModel(
      {required this.title,
      required this.description,
      required this.price,
      required this.rate,
      required this.urlImage});

  factory ProductModel.fromFirestore(DocumentSnapshot doc) {
    return ProductModel(
      title: doc['title'] ?? '',
      description: doc['description'] ?? '',
      price: doc['price'] ?? '',
      rate: doc['rate'] ?? '',
      urlImage: doc['urlImage'] ?? 'assets/6.jpg',
    );
  }
}
