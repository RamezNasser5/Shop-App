import 'package:flutter/material.dart';

class BoxSizes extends StatelessWidget {
  const BoxSizes({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.white,
              ),
              child: const Icon(
                Icons.coffee_maker,
                size: 60,
              ),
            ),
            Container(
              height: 120,
              width: 120,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: const Color(0xffA52A2A),
              ),
              child: const Icon(
                Icons.coffee_maker,
                size: 60,
              ),
            ),
            Container(
              height: 140,
              width: 140,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.white,
              ),
              child: const Icon(
                Icons.coffee_maker,
                size: 60,
              ),
            ),
          ],
        ),
        const Row(
          children: [
            SizedBox(
              width: 30,
            ),
            Text(
              'Small',
              style: TextStyle(
                fontFamily: 'Poppins',
                color: Color(0xff542E45),
                fontSize: 20,
              ),
            ),
            SizedBox(
              width: 60,
            ),
            Text(
              'Medium',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 20,
              ),
            ),
            SizedBox(
              width: 70,
            ),
            Text(
              'Large',
              style: TextStyle(
                fontFamily: 'Poppins',
                color: Color(0xff542E45),
                fontSize: 20,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
