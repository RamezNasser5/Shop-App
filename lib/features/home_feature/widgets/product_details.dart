import 'package:coffee_app/core/managers/cubits/add_product_cubit/add_product_cubit.dart';
import 'package:coffee_app/core/models/product_model.dart';
import 'package:coffee_app/features/home_feature/views/deatails_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key, required this.productModel});

  final ProductModel productModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return DetailesPage(
                  productModel: productModel,
                );
              },
            ),
          );
        },
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 20),
              child: Container(
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                    blurRadius: 30,
                    color: Colors.grey.withOpacity(0.3),
                    spreadRadius: 0,
                    offset: const Offset(10, 10),
                  )
                ]),
                child: Card(
                  elevation: 5,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 8.0,
                      horizontal: 8,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          productModel.title,
                          style: const TextStyle(
                            fontSize: 12,
                            fontFamily: 'Poppins',
                          ),
                        ),
                        Text(
                          productModel.description,
                          style: const TextStyle(
                            fontSize: 14,
                          ),
                        ),
                        Text(
                          r'$' '${productModel.price}',
                          style: const TextStyle(
                            fontSize: 14,
                            fontFamily: 'Poppins',
                          ),
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.star,
                              color: Colors.yellowAccent,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(
                              productModel.rate,
                              style: const TextStyle(
                                fontSize: 18,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
                left: 95,
                bottom: 120,
                child: CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage(
                    productModel.urlImage,
                  ),
                )),
            Positioned(
              left: 120,
              top: 90,
              child: Container(
                height: 42,
                width: 42,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    bottomRight: Radius.circular(15),
                  ),
                  color: Color(0xffA52A2A),
                ),
                child: GestureDetector(
                  onTap: () {
                    BlocProvider.of<AddProductCubit>(context)
                        .addProduct(productModel);
                  },
                  child: const Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
