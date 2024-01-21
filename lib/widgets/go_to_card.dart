import 'package:coffee_app/models/product_model.dart';
import 'package:flutter/material.dart';

class GoToCard extends StatelessWidget {
  const GoToCard({
    super.key,
    required this.productModel,
    required this.onTap,
  });
  final ProductModel productModel;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: const BoxDecoration(
          color: Color(0xff542E45),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(65),
            topRight: Radius.circular(65),
          ),
        ),
        width: double.infinity,
        child: Column(
          children: [
            Text(
              r'$' '${productModel.price}',
              style: const TextStyle(
                color: Colors.white,
                fontFamily: 'Poppins',
                fontSize: 20,
              ),
            ),
            const Text(
              'Add to card',
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'Poppins',
                fontSize: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
