import 'package:drinks_domain/drinks_domain.dart';
import 'package:flutter/foundation.dart';

/// The class that represents the states
sealed class DrinkDetailsState {}

/// The state that indicates a drink is loading
class DrinkDetailsLoading implements DrinkDetailsState {
  /// Construct the loading state
  const DrinkDetailsLoading();
}

/// The state that indicates a drink has been successfully loaded
@immutable
class DrinkDetailsSuccess implements DrinkDetailsState {
  /// Construct the success state with the loaded [drink]
  const DrinkDetailsSuccess({required this.drink});

  /// The drink to show details about
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

/// The state that indicates an error has occurred, generally when loading
/// the [Drink].
@immutable
class DrinkDetailsError implements DrinkDetailsState {
  /// Construct the error state with the error that occurred.
  const DrinkDetailsError(this.error);

  /// The error that occurred. Generally shown by the presentation layer.
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
