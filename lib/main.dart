import 'package:coffee_app/core/managers/cubits/add_product_cubit/add_product_cubit.dart';
import 'package:coffee_app/core/models/product_model.dart';
import 'package:coffee_app/features/auth_feature/presentation/manager/auth_bloc/auth_bloc.dart';
import 'package:coffee_app/features/home_feature/manager/cubits/card_products_cubit.dart/card_products_cubit.dart';
import 'package:coffee_app/features/home_feature/manager/cubits/categories_cubit/categories_cubit.dart';
import 'package:coffee_app/features/home_feature/manager/cubits/detailes_cubit/detailes_cubit.dart';
import 'package:coffee_app/features/search_feature/manager/cubits/search_product_cubit/search_product_cubit.dart';
import 'package:coffee_app/core/utils/firebase_options.dart';
import 'package:coffee_app/features/splach_feature/presentation/views/splach_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  await Hive.initFlutter();
  Hive.registerAdapter(ProductModelAdapter());
  await Hive.openBox<ProductModel>('product');
  runApp(const CoffeeApp());
}

class CoffeeApp extends StatelessWidget {
  const CoffeeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => AddProductCubit()),
        BlocProvider(create: (context) => CardProductsCubit()),
        BlocProvider(create: (context) => DetailesCubit()),
        BlocProvider(create: (context) => CategoriesCubit()),
        BlocProvider(create: (context) => SearchProductCubit()),
        BlocProvider(create: (context) => AuthBloc()),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SplachPage(),
      ),
    );
  }
}
