import 'package:coffee_app/widgets/add_and_delete.dart';
import 'package:flutter/material.dart';

class CardProductDetailes extends StatelessWidget {
  const CardProductDetailes({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
      child: const Card(
        elevation: 5,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            CircleAvatar(
              radius: 35,
              backgroundImage: AssetImage(
                'assets/4.jpeg',
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Expresso',
                  style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'Poppins',
                  ),
                ),
                Text(
                  'with milk',
                  style: TextStyle(
                    fontSize: 14,
                    color: Color(0xff542E45),
                  ),
                ),
                SizedBox(
                  height: 6,
                ),
                Text(
                  r'$' '3.50',
                  style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'Poppins',
                      color: Color(0xffA52A2A)),
                ),
                SizedBox(
                  height: 10,
                )
              ],
            ),
            AddAndDelete(),
          ],
        ),
      ),
    );
  }
}
