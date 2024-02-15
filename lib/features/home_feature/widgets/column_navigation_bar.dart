import 'package:coffee_app/features/home_feature/widgets/products_display.dart';
import 'package:coffee_app/features/home_feature/widgets/side_drinks.dart';
import 'package:flutter/material.dart';

class ColumnBehindNavigationBar extends StatelessWidget {
  const ColumnBehindNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Padding(
          padding: EdgeInsets.only(top: 20.0, right: 170),
          child: Text(
            'welcome,',
            style: TextStyle(
              fontSize: 16,
              color: Colors.red,
            ),
          ),
        ),
        Row(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 95.0),
              child: SideDrinks(),
            ),
            ProductsDisplay(),
          ],
        ),
      ],
    );
  }
}
