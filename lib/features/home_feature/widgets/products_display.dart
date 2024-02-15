import 'package:coffee_app/features/home_feature/manager/cubits/categories_cubit/categories_cubit.dart';
import 'package:coffee_app/features/home_feature/widgets/product_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductsDisplay extends StatefulWidget {
  const ProductsDisplay({
    super.key,
  });

  @override
  State<ProductsDisplay> createState() => _ProductsDisplayState();
}

class _ProductsDisplayState extends State<ProductsDisplay> {
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
          return Expanded(
            child: SizedBox(
              height: 500,
              width: MediaQuery.of(context).size.width,
              child: GridView.builder(
                physics: const BouncingScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                ),
                itemCount: state.products.length,
                itemBuilder: (context, index) {
                  var product = state.products[index];
                  return ProductDetails(
                    productModel: product,
                  );
                },
              ),
            ),
          );
        }
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }
}
