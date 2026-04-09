import 'package:drinks_domain/drinks_domain.dart';
import 'package:flutter/foundation.dart';

/// The state for a Drink data provider.
sealed class DrinkState {}

/// The loading state for a Drink data provider.
class DrinkLoading implements DrinkState {
  /// Constructs the loading state.
  const DrinkLoading();
}

/// The success state for a Drink data provider.
@immutable
class DrinkSuccess implements DrinkState {
  /// Constructs the success state with the loaded [Drink].
  const DrinkSuccess({required this.drink});

  /// The loaded drink.
  final Drink drink;

  @override
  String toString() => 'DrinkSuccess{drink: $drink}';

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DrinkSuccess &&
          runtimeType == other.runtimeType &&
          drink == other.drink;

  @override
  int get hashCode => drink.hashCode;
}

/// The error state for a Drink data provider.
@immutable
class DrinkError implements DrinkState {
  /// Constructs the error state with the error object.
  const DrinkError(this.error);

  /// The error object.
  final Object error;

  @override
  String toString() => 'DrinkError{error: $error}';

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DrinkError &&
          runtimeType == other.runtimeType &&
          error == other.error;

  @override
  int get hashCode => error.hashCode;
}
