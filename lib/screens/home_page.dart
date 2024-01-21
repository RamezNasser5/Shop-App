import 'package:coffee_app/cubits/add_product_cubit/add_product_cubit.dart';
import 'package:coffee_app/screens/search_page.dart';
import 'package:coffee_app/widgets/bottom_navigator_bar.dart';
import 'package:coffee_app/widgets/column_navigation_bar.dart';
import 'package:coffee_app/widgets/custom_search_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => AddProductCubit()),
      ],
      child: Scaffold(
        drawer: const Center(
          child: Text('Drawer'),
        ),
        appBar: AppBar(
          toolbarHeight: 85,
          backgroundColor: Colors.transparent,
          actions: [
            CustomSearchIcon(
              icons: Icons.search,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const SearchPage();
                    },
                  ),
                );
              },
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
      ),
    );
  }
}
