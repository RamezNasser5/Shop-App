import 'package:coffee_app/features/search_feature/manager/cubits/search_product_cubit/search_product_cubit.dart';
import 'package:coffee_app/features/search_feature/presentation/widgets/search_product_detailes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchProductDisplay extends StatelessWidget {
  const SearchProductDisplay({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchProductCubit, SearchProductState>(
      builder: (context, state) {
        if (state is SearchProductSuccess) {
          if (state.categoryName != '') {
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
                    return SearchProductDetailes(
                      productModel: product,
                    );
                  },
                ),
              ),
            );
          }
        } else if (state is SearchProductLoading) {
          return const CircularProgressIndicator();
        }
        return const Text('Entre CategoryName');
      },
    );
  }
}
