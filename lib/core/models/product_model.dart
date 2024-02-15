import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:hive/hive.dart';

part 'product_model.g.dart';

@HiveType(typeId: 0)
class ProductModel extends HiveObject {
  @HiveField(0)
  final String title;

  @HiveField(1)
  final String description;

  @HiveField(2)
  final String price;

  @HiveField(3)
  final String rate;

  @HiveField(4)
  final String urlImage;

  ProductModel({
    required this.title,
    required this.description,
    required this.price,
    required this.rate,
    required this.urlImage,
  });

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
