import 'package:flutter/material.dart';

class RequestComplete extends StatelessWidget {
  const RequestComplete({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: AssetImage('assets/true-icon.jpg'),
              width: 150,
              height: 150,
            ),
            Text(
              'Order Request Complete',
              style: TextStyle(fontSize: 25),
            ),
          ],
        ),
      ),
    );
  }
}
