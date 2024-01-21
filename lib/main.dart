import 'package:coffee_app/cubits/add_product_cubit/add_product_cubit.dart';
import 'package:coffee_app/cubits/card_products_cubit.dart/card_products_cubit.dart';
import 'package:coffee_app/cubits/detailes_cubit/detailes_cubit.dart';
import 'package:coffee_app/firebase_options.dart';
import 'package:coffee_app/models/product_model.dart';
import 'package:coffee_app/screens/home_page.dart';
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
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ),
    );
  }
}
