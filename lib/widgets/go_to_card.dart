import 'package:coffee_app/screens/card_page.dart';
import 'package:flutter/material.dart';

class GoToCard extends StatelessWidget {
  const GoToCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return const CardPage();
            },
          ),
        );
      },
      child: Container(
        decoration: const BoxDecoration(
          color: Color(0xff542E45),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(65),
            topRight: Radius.circular(65),
          ),
        ),
        width: double.infinity,
        child: const Column(
          children: [
            Text(
              r'$5.99',
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'Poppins',
                fontSize: 20,
              ),
            ),
            Text(
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
