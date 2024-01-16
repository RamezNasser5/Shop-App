import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:coffee_app/models/product_model.dart';
import 'package:coffee_app/widgets/product_details.dart';
import 'package:flutter/material.dart';

class ProductsDisplay extends StatelessWidget {
  const ProductsDisplay({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        height: 500,
        width: MediaQuery.of(context).size.width,
        child: StreamBuilder<QuerySnapshot>(
          stream:
              FirebaseFirestore.instance.collection('Hot Coffee').snapshots(),
          builder: (context, snapshot) {
            if (!snapshot.hasData) {
              return const Center(child: CircularProgressIndicator());
            }

            var products = snapshot.data!.docs;
            return GridView.builder(
              physics: const BouncingScrollPhysics(),
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ),
              itemCount: products.length,
              itemBuilder: (context, index) {
                var productDocument = products[index];

                ProductModel productModel =
                    ProductModel.fromFirestore(productDocument);

                return ProductDetails(
                  productModel: productModel,
                );
              },
            );
          },
        ),
      ),
    );
  }
}
