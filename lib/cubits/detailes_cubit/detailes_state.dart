part of 'detailes_cubit.dart';

@immutable
sealed class DetailesState {}

final class DetailesInitial extends DetailesState {
  final int favioriteColor;

  DetailesInitial({
    required this.favioriteColor,
  });
}

final class DetailesSuccess extends DetailesState {
  final int small;
  final int medium;
  final int large;

  DetailesSuccess({
    required this.small,
    required this.medium,
    required this.large,
  });
}
