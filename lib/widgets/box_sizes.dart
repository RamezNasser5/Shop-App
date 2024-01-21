import 'package:coffee_app/cubits/detailes_cubit/detailes_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BoxSizes extends StatelessWidget {
  const BoxSizes({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BlocBuilder<DetailesCubit, DetailesState>(
          builder: (context, state) {
            if (state is DetailesSuccess) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    onTap: () {
                      BlocProvider.of<DetailesCubit>(context).changeColor(
                          newSmall: 0xffA52A2A,
                          newMedium: 0xffFFFFFF,
                          newLarge: 0xffFFFFFF);
                    },
                    child: Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Color(state.small),
                      ),
                      child: const Icon(
                        Icons.coffee_maker,
                        size: 60,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      BlocProvider.of<DetailesCubit>(context).changeColor(
                          newSmall: 0xffFFFFFF,
                          newMedium: 0xffA52A2A,
                          newLarge: 0xffFFFFFF);
                    },
                    child: Container(
                      height: 120,
                      width: 120,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Color(state.medium),
                      ),
                      child: const Icon(
                        Icons.coffee_maker,
                        size: 60,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      BlocProvider.of<DetailesCubit>(context).changeColor(
                          newSmall: 0xffFFFFFF,
                          newMedium: 0xffFFFFFF,
                          newLarge: 0xffA52A2A);
                    },
                    child: Container(
                      height: 140,
                      width: 140,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Color(state.large),
                      ),
                      child: const Icon(
                        Icons.coffee_maker,
                        size: 60,
                      ),
                    ),
                  ),
                ],
              );
            }
            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () {
                    BlocProvider.of<DetailesCubit>(context).changeColor(
                        newSmall: 0xffA52A2A,
                        newMedium: 0xffFFFFFF,
                        newLarge: 0xffFFFFFF);
                  },
                  child: Container(
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
                ),
                GestureDetector(
                  onTap: () {
                    BlocProvider.of<DetailesCubit>(context).changeColor(
                        newSmall: 0xffFFFFFF,
                        newMedium: 0xffA52A2A,
                        newLarge: 0xffFFFFFF);
                  },
                  child: Container(
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
                ),
                GestureDetector(
                  onTap: () {
                    BlocProvider.of<DetailesCubit>(context).changeColor(
                        newSmall: 0xffFFFFFF,
                        newMedium: 0xffFFFFFF,
                        newLarge: 0xffA52A2A);
                  },
                  child: Container(
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
                ),
              ],
            );
          },
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
                color: Color(0xff542E45),
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
                color: Color(0xff542E45),
                fontSize: 20,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
