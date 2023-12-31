import 'package:coffee_app/widgets/bottom_navigator_bar.dart';
import 'package:coffee_app/widgets/custom_search_icon.dart';
import 'package:coffee_app/widgets/product_details.dart';
import 'package:coffee_app/widgets/side_drinks.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Center(
        child: Text('Drawer'),
      ),
      appBar: AppBar(
        toolbarHeight: 85,
        backgroundColor: Colors.transparent,
        actions: const [
          CustomSearchIcon(
            icons: Icons.search,
          ),
        ],
        centerTitle: true,
        title: const Text(
          'StarCoffee',
          style: TextStyle(
              fontFamily: 'Poppins', fontSize: 24, color: Color(0xFF542E45)),
        ),
      ),
      body: const Column(
        children: [
          Padding(
            padding: EdgeInsets.only(right: 180.0),
            child: Text(
              'welcome,',
              style: TextStyle(
                fontSize: 16,
                color: Colors.red,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 130.0),
            child: Text(
              'Ramez Nasser',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 16,
              ),
            ),
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 40.0),
                child: SideDrinks(),
              ),
              Column(
                children: [
                  ProductDetails(),
                  ProductDetails(),
                ],
              ),
              Column(
                children: [
                  ProductDetails(),
                  ProductDetails(),
                ],
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: const BottomNavigatorBar(),
      backgroundColor: const Color(0xffD9D9D9),
    );
  }
}
