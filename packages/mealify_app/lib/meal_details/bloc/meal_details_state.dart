import 'package:flutter/cupertino.dart';
import 'package:meals_repository/meals_repository.dart';

sealed class MealDetailsState {}

class MealDetailsLoading implements MealDetailsState {
  const MealDetailsLoading();
}

@immutable
class MealDetailsSuccess implements MealDetailsState {
  const MealDetailsSuccess({required this.meal});

  final Meal meal;

  @override
  String toString() {
    return 'MealDetailsSuccess{meal: $meal}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MealDetailsSuccess &&
          runtimeType == other.runtimeType &&
          meal == other.meal;

  @override
  int get hashCode => meal.hashCode;
}

@immutable
class MealDetailsError implements MealDetailsState {
  const MealDetailsError(this.error);

  final Object error;

  @override
  String toString() {
    return 'MealDetailsError{error: $error}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MealDetailsError &&
          runtimeType == other.runtimeType &&
          error == other.error;

  @override
  int get hashCode => error.hashCode;
}
