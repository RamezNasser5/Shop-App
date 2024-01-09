import 'package:cloud_firestore/cloud_firestore.dart';

class CategoryModel {
  final String categoryName;

  CategoryModel({required this.categoryName});

  factory CategoryModel.fromFirestore(DocumentSnapshot doc) {
    return CategoryModel(categoryName: doc.id);
  }
}
