import 'package:coffee_app/widgets/bottom_navigator_bar.dart';
import 'package:coffee_app/widgets/column_navigation_bar.dart';
import 'package:coffee_app/widgets/custom_search_icon.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Center(
        child: Text('Drawer'),
      ),
      appBar: AppBar(
        toolbarHeight: 85,
        backgroundColor: Colors.transparent,
        actions: const [
          CustomSearchIcon(
            icons: Icons.search,
          ),
        ],
        centerTitle: true,
        title: const Text(
          'StarCoffee',
          style: TextStyle(
              fontFamily: 'Poppins', fontSize: 24, color: Color(0xFF542E45)),
        ),
      ),
      body: Stack(
        children: [
          const ColumnBehindNavigationBar(),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                const BottomNavigatorBar(),
                Positioned(
                  bottom: 40,
                  left: 170,
                  child: ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(30)),
                    child: Container(
                      width: 65,
                      height: 65,
                      color: const Color(0xffA52A2A),
                      child: const Icon(
                        Icons.home,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      //bottomNavigationBar: const BottomNavigatorBar(),
      backgroundColor: const Color(0xffD9D9D9),
    );
  }
}
