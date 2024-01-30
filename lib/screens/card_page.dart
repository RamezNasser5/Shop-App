import 'package:coffee_app/cubits/card_products_cubit.dart/card_products_cubit.dart';
import 'package:coffee_app/models/product_model.dart';
import 'package:coffee_app/widgets/card_detailes_product.dart';
import 'package:coffee_app/widgets/request_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CardPage extends StatelessWidget {
  const CardPage({super.key, required this.productModel});

  final ProductModel productModel;

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: BlocBuilder<CardProductsCubit, CardProductsState>(
        builder: (context, state) {
          if (state is CardProductsSuccess) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 23,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16.0, vertical: 6),
                      child: Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: const Color(0xffA52A2A),
                        ),
                        child: IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: const Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                            size: 25,
                          ),
                        ),
                      ),
                    ),
                    const Text(
                      'Cart',
                      style: TextStyle(
                        color: Color(0xff542E45),
                        fontFamily: 'Poppins',
                        fontSize: 20,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16.0, vertical: 6),
                      child: Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: const Color(0xffA52A2A),
                        ),
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.favorite,
                            color: Colors.white,
                            size: 25,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 230.0, top: 30),
                  child: Text(
                    'My order',
                    style: TextStyle(
                      color: Color(0xff542E45),
                      fontFamily: 'Poppins',
                      fontSize: 30,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, bottom: 20),
                  child: Row(
                    children: [
                      const Text(
                        'You have ',
                        style: TextStyle(
                          color: Color(0xff542E45),
                          fontFamily: 'Poppins',
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        '${state.products.length} items',
                        style: const TextStyle(
                          color: Color(0xffA52A2A),
                          fontFamily: 'Poppins',
                          fontSize: 20,
                        ),
                      ),
                      const Text(
                        ' in your cart',
                        style: TextStyle(
                          color: Color(0xff542E45),
                          fontFamily: 'Poppins',
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
                const CardProductListView(),
                const SizedBox(
                  height: 10,
                ),
                RequestContainer(
                  productModel: productModel,
                  state: state,
                )
              ],
            );
          }
          return const Expanded(
            child: SizedBox(
              height: 100,
              child: Center(
                child: CircularProgressIndicator(),
              ),
            ),
          );
        },
      ),
    ),);
  }
}

class CardProductListView extends StatelessWidget {
  const CardProductListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CardProductsCubit, CardProductsState>(
      builder: (context, state) {
        if (state is CardProductsSuccess) {
          List<ProductModel> products = state.products;

          return Expanded(
            child: SizedBox(
              height: 100,
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: products.length,
                itemBuilder: (context, index) {
                  return CardProductDetailes(
                    productModel: products[index],
                  );
                },
              ),
            ),
          );
        }
        return const Expanded(
          child: SizedBox(
            height: 100,
            child: Center(
              child: CircularProgressIndicator(),
            ),
          ),
        );
      },
    );
  }
}
