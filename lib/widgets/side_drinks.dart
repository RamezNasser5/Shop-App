import 'package:coffee_app/cubits/categories_cubit/categories_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SideDrinks extends StatelessWidget {
  const SideDrinks({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(70),
          ),
          color: Color(0xffA52A2A)),
      width: 60,
      height: 612,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Spacer(),
          RotatedBox(
            quarterTurns: 3,
            child: GestureDetector(
              onTap: () {
                BlocProvider.of<CategoriesCubit>(context)
                    .changeCategoryName(newCategoryName: 'IceTeas');
              },
              child: const Text(
                '.Ice Teas',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 16,
                ),
              ),
            ),
          ),
          const Spacer(),
          RotatedBox(
            quarterTurns: 3,
            child: GestureDetector(
              onTap: () {
                BlocProvider.of<CategoriesCubit>(context)
                    .changeCategoryName(newCategoryName: 'Hot Coffee');
              },
              child: const Text(
                '.Hot Coffee',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          const Spacer(),
          GestureDetector(
            onTap: () {
              BlocProvider.of<CategoriesCubit>(context)
                  .changeCategoryName(newCategoryName: 'Hot Teas');
            },
            child: const RotatedBox(
              quarterTurns: 3,
              child: Text(
                '.Hot Teas',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 16,
                ),
              ),
            ),
          ),
          const Spacer(),
          GestureDetector(
            onTap: () {
              BlocProvider.of<CategoriesCubit>(context)
                  .changeCategoryName(newCategoryName: 'Drinks');
            },
            child: const RotatedBox(
              quarterTurns: 3,
              child: Text(
                '.Drinks',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 16,
                ),
              ),
            ),
          ),
          const Spacer(),
          GestureDetector(
            onTap: () {
              BlocProvider.of<CategoriesCubit>(context)
                  .changeCategoryName(newCategoryName: 'Bakery');
            },
            child: const RotatedBox(
              quarterTurns: 3,
              child: Text(
                '.Bakery',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 16,
                ),
              ),
            ),
          ),
          const Spacer(
            flex: 2,
          ),
        ],
      ),
    );
  }
}
