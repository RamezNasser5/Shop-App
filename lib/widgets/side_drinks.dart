import 'package:coffee_app/cubits/categories_cubit/categories_cubit.dart';
import 'package:coffee_app/widgets/side_drinks_initial.dart';
import 'package:coffee_app/widgets/side_drinks_success.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SideDrinks extends StatelessWidget {
  const SideDrinks({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoriesCubit, CategoriesState>(
      builder: (context, state) {
        if (state is CategoriesSuccess) {
          return SideDrinksSuccess(
            state: state,
          );
        } else if (state is CategoriesInitial) {
          return SideDrinksInitial(
            state: state,
          );
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}
