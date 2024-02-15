import 'package:coffee_app/core/models/product_model.dart';
import 'package:coffee_app/features/home_feature/manager/cubits/card_products_cubit.dart/card_products_cubit.dart';
import 'package:coffee_app/features/home_feature/views/card_page.dart';
import 'package:coffee_app/features/home_feature/views/deatails_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BottomNavigatorBar extends StatelessWidget {
  const BottomNavigatorBar({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(100.0),
        topRight: Radius.circular(100.0),
      ),
      child: SizedBox(
        height: 80,
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: const Color(0xff411530),
          items: <BottomNavigationBarItem>[
            const BottomNavigationBarItem(
              icon: Icon(
                Icons.shop,
                color: Colors.black,
              ),
              label: 'Shopping',
            ),
            BottomNavigationBarItem(
              icon: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return DetailesPage(
                          productModel: ProductModel(
                              title: 'Ice Teas',
                              description: 'with milk',
                              price: '3.33',
                              rate: '4.6',
                              urlImage: 'assets/1.jpeg'),
                        );
                      },
                    ),
                  );
                },
                child: const Icon(
                  Icons.book_online_outlined,
                  color: Colors.black,
                ),
              ),
              label: 'Details',
            ),
            BottomNavigationBarItem(
              icon: GestureDetector(
                onTap: () {
                  BlocProvider.of<CardProductsCubit>(context)
                      .fetchAllProducts();

                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return CardPage(
                          productModel: ProductModel(
                              title: 'Ice Teas',
                              description: 'with milk',
                              price: '3.33',
                              rate: '4.6',
                              urlImage: 'assets/1.jpeg'),
                        );
                      },
                    ),
                  );
                },
                child: const Icon(
                  Icons.car_crash,
                  color: Colors.black,
                ),
              ),
              label: 'Cart',
            ),
            const BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                color: Colors.black,
              ),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}
