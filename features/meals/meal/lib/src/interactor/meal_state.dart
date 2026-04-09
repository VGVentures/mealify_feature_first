import 'package:flutter/foundation.dart';
import 'package:meals_domain/meals_domain.dart';

/// The state for a Meal data provider.
sealed class MealState {}

/// The loading state for a Meal data provider.
class MealLoading implements MealState {
  /// Constructs the loading state.
  const MealLoading();
}

/// The success state for a Meal data provider.
@immutable
class MealSuccess implements MealState {
  /// Constructs the success state with the loaded [Meal].
  const MealSuccess({required this.meal});

  /// The loaded meal.
  final Meal meal;

  @override
  String toString() => 'MealSuccess{meal: $meal}';

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MealSuccess &&
          runtimeType == other.runtimeType &&
          meal == other.meal;

  @override
  int get hashCode => meal.hashCode;
}

/// The error state for a Meal data provider.
@immutable
class MealError implements MealState {
  /// Constructs the error state with the error object.
  const MealError(this.error);

  /// The error object.
  final Object error;

  @override
  String toString() => 'MealError{error: $error}';

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MealError &&
          runtimeType == other.runtimeType &&
          error == other.error;

  @override
  int get hashCode => error.hashCode;
}
