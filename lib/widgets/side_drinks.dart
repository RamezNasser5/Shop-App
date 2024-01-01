import 'package:flutter/material.dart';

class SideDrinks extends StatelessWidget {
  const SideDrinks({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(70),
          ),
          color: Color(0xffA52A2A)),
      width: 80,
      height: 612,
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Spacer(),
          RotatedBox(
            quarterTurns: 3,
            child: Text(
              '.Ice Teas',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 16,
              ),
            ),
          ),
          Spacer(),
          RotatedBox(
            quarterTurns: 3,
            child: Text(
              '.Hot Coffee',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 16,
                color: Colors.white,
              ),
            ),
          ),
          Spacer(),
          RotatedBox(
            quarterTurns: 3,
            child: Text(
              '.Hot Teas',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 16,
              ),
            ),
          ),
          Spacer(),
          RotatedBox(
            quarterTurns: 3,
            child: Text(
              '.Drinks',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 16,
              ),
            ),
          ),
          Spacer(),
          RotatedBox(
            quarterTurns: 3,
            child: Text(
              '.Bakery',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 16,
              ),
            ),
          ),
          Spacer(
            flex: 2,
          ),
        ],
      ),
    );
  }
}
