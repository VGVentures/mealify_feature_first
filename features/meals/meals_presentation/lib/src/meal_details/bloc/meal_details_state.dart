import 'package:flutter/foundation.dart';
import 'package:meals_domain/meals_domain.dart';

/// The class that represents the states
sealed class MealDetailsState {}

/// The state that indicates a meal is loading
class MealDetailsLoading implements MealDetailsState {
  /// Construct the loading state
  const MealDetailsLoading();
}

/// The state that indicates a meal has been successfully loaded
@immutable
class MealDetailsSuccess implements MealDetailsState {
  /// Construct the success state with the loaded [meal]
  const MealDetailsSuccess({required this.meal});

  /// The meal to show details about
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

/// The state that indicates an error has occurred, generally when loading
/// the [Meal].
@immutable
class MealDetailsError implements MealDetailsState {
  /// Construct the error state with the error that occurred.
  const MealDetailsError(this.error);

  /// The error that occurred. Generally shown by the presentation layer.
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
