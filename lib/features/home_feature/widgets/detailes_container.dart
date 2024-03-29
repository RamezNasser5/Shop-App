import 'package:coffee_app/core/models/product_model.dart';
import 'package:coffee_app/features/home_feature/manager/cubits/card_products_cubit.dart/card_products_cubit.dart';
import 'package:coffee_app/features/home_feature/views/card_page.dart';
import 'package:coffee_app/features/home_feature/widgets/box_sizes.dart';
import 'package:coffee_app/features/home_feature/widgets/go_to_card.dart';
import 'package:coffee_app/features/home_feature/widgets/rounded_shape.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
            height: 30,
          ),
          const BoxSizes(),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.0945,
          ),
          GoToCard(
            productModel: productModel,
            onTap: () {
              BlocProvider.of<CardProductsCubit>(context).fetchAllProducts();
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return CardPage(
                      productModel: productModel,
                    );
                  },
                ),
              );
            },
            title: 'Add to Card',
            price: double.parse(productModel.price),
          ),
        ],
      ),
    );
  }
}
