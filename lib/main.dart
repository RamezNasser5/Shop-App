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

/// Initializes the app and sets up the necessary configurations and services.
///
/// This function is the entry point of the application. It performs the
/// following steps:
///
/// 1. Initializes the Flutter binding, ensuring that the widget tree can be
///    rendered correctly.
/// 2. Initializes Firebase using the current platform options, which
///    establishes a connection with Firebase services.
/// 3. Initializes Hive for Flutter, a persistent and fast key-value store for
///    Flutter.
/// 4. Registers the ProductModel adapter, allowing Hive to serialize and
///    deserialize ProductModel objects.
/// 5. Opens a box named 'product' using Hive, a collection of ProductModel
///    objects.
/// 6. Runs the CoffeeApp widget, the root widget of the application.
///
/// This function does not take any parameters and does not return any values.
void main() async {
  // Initialize Flutter binding.
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize Firebase using current platform options.
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  // Initialize Hive for Flutter.
  await Hive.initFlutter();

  // Register the ProductModel adapter.
  Hive.registerAdapter(ProductModelAdapter());

  // Open a box named 'product' using Hive.
  await Hive.openBox<ProductModel>('product');

  // Run the CoffeeApp widget.
  runApp(const CoffeeApp());
}

/// The CoffeeApp widget is the root widget of the application.
///
/// It initializes and provides multiple bloc providers for different cubits
/// needed in the application. Each bloc provider is responsible for creating
/// and providing an instance of a specific cubit.
///
/// The child of the MultiBlocProvider is a MaterialApp widget. This widget
/// configures the overall appearance and behavior of the application.
class CoffeeApp extends StatelessWidget {
  /// Constructs a const CoffeeApp.
  const CoffeeApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      /// The list of bloc providers.
      ///
      /// Each provider creates and provides an instance of a specific cubit.
      providers: [
        // Bloc provider for AddProductCubit.
        BlocProvider(create: (context) => AddProductCubit()),
        // Bloc provider for CardProductsCubit.
        BlocProvider(create: (context) => CardProductsCubit()),
        // Bloc provider for DetailesCubit.
        BlocProvider(create: (context) => DetailesCubit()),
        // Bloc provider for CategoriesCubit.
        BlocProvider(create: (context) => CategoriesCubit()),
        // Bloc provider for SearchProductCubit.
        BlocProvider(create: (context) => SearchProductCubit()),
        // Bloc provider for AuthBloc.
        BlocProvider(create: (context) => AuthBloc()),
      ],
      /// The child of the MultiBlocProvider is a MaterialApp widget.
      child: const MaterialApp(
        /// Whether to show a 'debug banner' with detailed build information.
        debugShowCheckedModeBanner: false,
        /// The home page of the application.
        home: SplachPage(),
      ),
    );
  }
}
