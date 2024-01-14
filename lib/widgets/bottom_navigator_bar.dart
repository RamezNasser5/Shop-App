import 'package:flutter/material.dart';

class BottomNavigatorBar extends StatelessWidget {
  const BottomNavigatorBar({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(100.0),
        topRight: Radius.circular(100.0),
      ),
      child: SizedBox(
        height: 80,
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: const Color(0xff411530),
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                Icons.shop,
                color: Colors.black,
              ),
              label: 'Shopping',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.book_online_outlined,
                color: Colors.black,
              ),
              label: 'Details',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.car_crash,
                color: Colors.black,
              ),
              label: 'Cart',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                color: Colors.black,
              ),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}
