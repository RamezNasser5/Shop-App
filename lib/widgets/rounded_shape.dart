import 'package:flutter/material.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';

class RoundedShape extends StatelessWidget {
  const RoundedShape({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          width: 300,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(100.0),
              topRight: Radius.circular(100.0),
            ),
            border: GradientBoxBorder(
              gradient: LinearGradient(
                colors: [
                  Color(0xffA52A2A),
                  Color(0xff411530),
                  Colors.transparent,
                  Colors.transparent,
                  Colors.transparent,
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
              width: 6,
            ),
          ),
          height: 119,
          child: const Center(
              child: Text(
            'Milk',
            style: TextStyle(
              fontSize: 20,
              color: Color(0xffA52A2A),
              fontFamily: 'OrelegaOne-Regular',
            ),
          )),
        ),
        Positioned(
          left: 130,
          bottom: 90,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: const Color(0xffA52A2A),
            ),
            width: 45,
            height: 45,
            child: const Icon(Icons.coffee),
          ),
        ),
        Positioned(
          top: 55,
          left: 280,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: const Color(0xff604020),
            ),
            width: 35,
            height: 35,
          ),
        ),
        Positioned(
          top: 55,
          right: 280,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: const Color(0xff604020),
            ),
            width: 35,
            height: 35,
          ),
        ),
      ],
    );
  }
}
