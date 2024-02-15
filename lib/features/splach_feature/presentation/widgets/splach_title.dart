import 'package:flutter/material.dart';

class SplachTitle extends StatelessWidget {
  const SplachTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text(
          'Now It\'s',
          style: TextStyle(
            color: Color(0xff3A2F2F),
            fontSize: 40,
            fontFamily: 'Poppins',
          ),
        ),
        Text(
          '    Time for',
          style: TextStyle(
            color: Colors.white,
            fontSize: 40,
            fontFamily: 'Poppins',
          ),
        ),
        Text(
          '        a Coffee',
          style: TextStyle(
            color: Colors.white,
            fontSize: 40,
            fontFamily: 'Poppins',
          ),
        ),
      ],
    );
  }
}
