import 'package:coffee_app/cubits/card_products_cubit.dart/card_products_cubit.dart';
import 'package:coffee_app/models/product_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CardProductDetailes extends StatelessWidget {
  const CardProductDetailes({
    super.key,
    required this.productModel,
  });

  final ProductModel productModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0, left: 10, right: 10),
      child: Container(
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
            blurRadius: 30,
            color: Colors.white.withOpacity(0.3),
            spreadRadius: 0,
            offset: const Offset(10, 10),
          )
        ]),
        width: 370,
        height: 100,
        child: Card(
          elevation: 5,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CircleAvatar(
                radius: 35,
                backgroundImage: AssetImage(
                  productModel.urlImage,
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    productModel.title,
                    style: const TextStyle(
                      fontSize: 18,
                      fontFamily: 'Poppins',
                    ),
                  ),
                  Text(
                    productModel.description,
                    style: const TextStyle(
                      fontSize: 14,
                      color: Color(0xff542E45),
                    ),
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  Text(
                    r'$' '${productModel.price}',
                    style: const TextStyle(
                        fontSize: 16,
                        fontFamily: 'Poppins',
                        color: Color(0xffA52A2A)),
                  ),
                  const SizedBox(
                    height: 10,
                  )
                ],
              ),
              GestureDetector(
                onTap: () {
                  productModel.delete();
                  BlocProvider.of<CardProductsCubit>(context)
                      .fetchAllProducts();
                },
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color(0xffA52A2A),
                    ),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: const Icon(
                    Icons.delete,
                    color: Color(0xffA52A2A),
                    size: 40,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
