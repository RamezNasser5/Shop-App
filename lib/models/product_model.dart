import 'package:cloud_firestore/cloud_firestore.dart';

class ProductModel {
  final String title;
  final String describtion;
  final String price;
  final String rate;

  ProductModel({
    required this.title,
    required this.describtion,
    required this.price,
    required this.rate,
  });

  factory ProductModel.fromFirestore(DocumentSnapshot docs) {
    var data = docs.data() as Map<String, dynamic>;
    return ProductModel(
      title: data['Title'] ?? '',
      describtion: data['description'] ?? '',
      price: (data['price'] ?? 0.0),
      rate: (data['rate'] ?? 0.0),
    );
  }
}
