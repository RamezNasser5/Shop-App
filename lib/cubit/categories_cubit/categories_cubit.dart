import 'package:coffee_app/cubit/categories_cubit/categories_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GetCategoryCubit extends Cubit<CategoriesState> {
  GetCategoryCubit() : super(CategoriesInitialState());
}
