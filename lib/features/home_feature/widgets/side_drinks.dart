import 'package:coffee_app/features/home_feature/manager/cubits/categories_cubit/categories_cubit.dart';
import 'package:coffee_app/features/home_feature/widgets/side_drinks_success.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SideDrinks extends StatefulWidget {
  const SideDrinks({
    super.key,
  });

  @override
  State<SideDrinks> createState() => _SideDrinksState();
}

class _SideDrinksState extends State<SideDrinks> {
  @override
  void initState() {
    BlocProvider.of<CategoriesCubit>(context).getProducts(
      newCategoryName: 'IceTeas',
      newFlag1: 0xffFFFFFF,
      newFlag2: 0xff000000,
      newFlag3: 0xff000000,
      newFlag4: 0xff000000,
      newFlag5: 0xff000000,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoriesCubit, CategoriesState>(
      builder: (context, state) {
        if (state is CategoriesSuccess) {
          return SideDrinksSuccess(
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
