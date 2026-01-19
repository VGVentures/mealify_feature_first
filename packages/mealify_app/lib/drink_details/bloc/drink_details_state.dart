import 'package:drinks_repository/drinks_repository.dart';
import 'package:flutter/cupertino.dart';

sealed class DrinkDetailsState {}

class DrinkDetailsLoading implements DrinkDetailsState {
  const DrinkDetailsLoading();
}

@immutable
class DrinkDetailsSuccess implements DrinkDetailsState {
  const DrinkDetailsSuccess({required this.drink});

  final Drink drink;

  @override
  String toString() {
    return 'DrinkDetailsSuccess{drink: $drink}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DrinkDetailsSuccess &&
          runtimeType == other.runtimeType &&
          drink == other.drink;

  @override
  int get hashCode => drink.hashCode;
}

@immutable
class DrinkDetailsError implements DrinkDetailsState {
  const DrinkDetailsError(this.error);

  final Object error;

  @override
  String toString() {
    return 'DrinkDetailsError{error: $error}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DrinkDetailsError &&
          runtimeType == other.runtimeType &&
          error == other.error;

  @override
  int get hashCode => error.hashCode;
}
