import 'package:coffee_app/cubits/search_product_cubit/search_product_cubit.dart';
import 'package:coffee_app/widgets/custom_text_field.dart';
import 'package:coffee_app/widgets/search_product_display.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  static String id = 'SearchPage';

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  String? categuryName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffD9D9D9),
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Search Page'),
        backgroundColor: Colors.transparent,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 32),
        child: Column(
          children: [
            CustomTextField(
              productName: 'Search',
              onChange: (data) {
                BlocProvider.of<SearchProductCubit>(context)
                    .getCategoryName(newCategoryName: data);
                setState(() {});
              },
            ),
            const SizedBox(
              height: 20,
            ),
            const SearchProductDisplay()
          ],
        ),
      ),
    );
  }
}
