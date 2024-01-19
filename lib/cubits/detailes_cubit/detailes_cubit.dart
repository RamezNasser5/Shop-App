import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

part 'detailes_state.dart';

class DetailesCubit extends Cubit<DetailesState> {
  DetailesCubit()
      : super(DetailesInitial(
          favioriteColor: 0xffFFFFFF,
        ));
  changeColor({
    required int newFavioriteColor,
    required int newSmall,
    required int newMedium,
    required int newLarge,
  }) {
    emit(
      DetailesSuccess(
        favioriteColor: newFavioriteColor,
        small: newSmall,
        medium: newMedium,
        large: newLarge,
      ),
    );
  }
}
