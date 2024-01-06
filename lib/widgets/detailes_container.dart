import 'package:coffee_app/widgets/add_and_delete.dart';
import 'package:coffee_app/widgets/box_sizes.dart';
import 'package:coffee_app/widgets/go_to_card.dart';
import 'package:coffee_app/widgets/rounded_shape.dart';
import 'package:flutter/material.dart';

class DetailesContainer extends StatelessWidget {
  const DetailesContainer({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 550,
      decoration: const BoxDecoration(
        color: Color(0xffD9D9D9),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(100),
          topRight: Radius.circular(100),
        ),
      ),
      width: double.infinity,
      child: const Column(
        children: [
          Text(
            'Ingredients',
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: 30,
              fontFamily: 'OrelegaOne-Regular',
            ),
          ),
          SizedBox(
            height: 20,
          ),
          RoundedShape(),
          Text(
            'Coffee Size',
            style: TextStyle(
              fontSize: 20,
              fontFamily: 'Poppins',
            ),
          ),
          SizedBox(
            height: 20,
          ),
          BoxSizes(),
          SizedBox(
            height: 30,
          ),
          AddAndDelete(),
          SizedBox(
            height: 20,
          ),
          GoToCard(),
        ],
      ),
    );
  }
}
