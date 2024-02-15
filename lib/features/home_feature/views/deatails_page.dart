import 'package:coffee_app/core/models/product_model.dart';
import 'package:coffee_app/features/home_feature/manager/cubits/detailes_cubit/detailes_cubit.dart';
import 'package:coffee_app/features/home_feature/widgets/initial_stack.dart';
import 'package:coffee_app/features/home_feature/widgets/success_stack.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DetailesPage extends StatelessWidget {
  const DetailesPage({super.key, required this.productModel});

  final ProductModel productModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<DetailesCubit, DetailesState>(
        builder: (context, state) {
          if (state is DetailesSuccess) {
            return SuccessStack(
              productModel: productModel,
              state: state,
            );
          } else if (state is DetailesInitial) {
            return InitialStack(productModel: productModel, state: state);
          }
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
