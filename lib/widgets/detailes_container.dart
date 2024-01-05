import 'package:flutter/material.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';

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
      child: Column(
        children: [
          const Text(
            'Ingredients',
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: 30,
              fontFamily: 'OrelegaOne-Regular',
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Stack(
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
          ),
          const Text(
            'Coffee Size',
            style: TextStyle(
              fontSize: 20,
              fontFamily: 'Poppins',
            ),
          ),
          const SizedBox(
            height: 20,
          ),
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
                  fontSize: 20,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: const Color(0xffA52A2A),
                  ),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: const Icon(
                  Icons.delete,
                  color: Color(0xffA52A2A),
                  size: 40,
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(
                  left: 20,
                  right: 20,
                ),
                child: Text(
                  "5",
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 20,
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: const Color(0xffA52A2A),
                  ),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: const Icon(
                  Icons.add,
                  color: Color(0xffA52A2A),
                  size: 40,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
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
          )
        ],
      ),
    );
  }
}
