import 'package:coffee_app/models/product_model.dart';
import 'package:coffee_app/widgets/add_and_delete.dart';
import 'package:coffee_app/widgets/box_sizes.dart';
import 'package:coffee_app/widgets/go_to_card.dart';
import 'package:coffee_app/widgets/rounded_shape.dart';
import 'package:flutter/material.dart';

class DetailesContainer extends StatelessWidget {
  const DetailesContainer({super.key, required this.productModel});
  final ProductModel productModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 550,
      decoration: const BoxDecoration(
        color: Color(0xffD9D9D9),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(100),
          topRight: Radius.circular(100),
        ),
      ),
      width: double.infinity,
      child: Column(
        children: [
          const Text(
            'Ingredients',
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: 30,
              fontFamily: 'OrelegaOne-Regular',
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const RoundedShape(),
          const Text(
            'Coffee Size',
            style: TextStyle(
              fontSize: 20,
              fontFamily: 'Poppins',
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const BoxSizes(),
          const SizedBox(
            height: 30,
          ),
          const AddAndDelete(),
          const SizedBox(
            height: 20,
          ),
          GoToCard(
            productModel: productModel,
          ),
        ],
      ),
    );
  }
}
