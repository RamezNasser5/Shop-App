import 'package:coffee_app/widgets/detailes_container.dart';
import 'package:flutter/material.dart';

class DetailesPage extends StatelessWidget {
  const DetailesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(50),
              bottomRight: Radius.circular(50),
            ),
            child: Image.asset(
              'assets/3.jpeg',
              fit: BoxFit.cover,
              height: double.infinity,
              width: double.infinity,
            ),
          ),
          const Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: DetailesContainer(),
          ),
        ],
      ),
    );
  }
}
