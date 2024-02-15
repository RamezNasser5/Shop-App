import 'package:coffee_app/features/home_feature/manager/cubits/categories_cubit/categories_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SideDrinksInitial extends StatelessWidget {
  const SideDrinksInitial({
    super.key,
    required this.state,
  });

  final CategoriesInitial state;

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
                BlocProvider.of<CategoriesCubit>(context).getProducts(
                  newCategoryName: 'IceTeas',
                  newFlag1: 0xffFFFFFF,
                  newFlag2: 0xff000000,
                  newFlag3: 0xff000000,
                  newFlag4: 0xff000000,
                  newFlag5: 0xff000000,
                );
              },
              child: Text(
                '.Ice Teas',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 16,
                  color: Color(state.flag1),
                ),
              ),
            ),
          ),
          const Spacer(),
          RotatedBox(
            quarterTurns: 3,
            child: GestureDetector(
              onTap: () {
                BlocProvider.of<CategoriesCubit>(context).getProducts(
                  newCategoryName: 'Hot Coffee',
                  newFlag1: 0xff000000,
                  newFlag2: 0xffFFFFFF,
                  newFlag3: 0xff000000,
                  newFlag4: 0xff000000,
                  newFlag5: 0xff000000,
                );
              },
              child: Text(
                '.Hot Coffee',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 16,
                  color: Color(state.flag2),
                ),
              ),
            ),
          ),
          const Spacer(),
          GestureDetector(
            onTap: () {
              BlocProvider.of<CategoriesCubit>(context).getProducts(
                newCategoryName: 'Hot Teas',
                newFlag1: 0xff000000,
                newFlag2: 0xff000000,
                newFlag3: 0xffFFFFFF,
                newFlag4: 0xff000000,
                newFlag5: 0xff000000,
              );
            },
            child: RotatedBox(
              quarterTurns: 3,
              child: Text(
                '.Hot Teas',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 16,
                  color: Color(state.flag3),
                ),
              ),
            ),
          ),
          const Spacer(),
          GestureDetector(
            onTap: () {
              BlocProvider.of<CategoriesCubit>(context).getProducts(
                newCategoryName: 'Drinks',
                newFlag1: 0xff000000,
                newFlag2: 0xff000000,
                newFlag3: 0xff000000,
                newFlag4: 0xffFFFFFF,
                newFlag5: 0xff000000,
              );
            },
            child: RotatedBox(
              quarterTurns: 3,
              child: Text(
                '.Drinks',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 16,
                  color: Color(state.flag4),
                ),
              ),
            ),
          ),
          const Spacer(),
          GestureDetector(
            onTap: () {
              BlocProvider.of<CategoriesCubit>(context).getProducts(
                newCategoryName: 'Bakery',
                newFlag1: 0xff000000,
                newFlag2: 0xff000000,
                newFlag3: 0xff000000,
                newFlag4: 0xff000000,
                newFlag5: 0xffFFFFFF,
              );
            },
            child: RotatedBox(
              quarterTurns: 3,
              child: Text(
                '.Bakery',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 16,
                  color: Color(state.flag5),
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
