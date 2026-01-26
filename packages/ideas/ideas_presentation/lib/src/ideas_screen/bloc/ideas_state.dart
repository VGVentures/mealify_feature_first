import 'package:drinks_domain/drinks_domain.dart';
import 'package:flutter/cupertino.dart';
import 'package:meals_domain/meals_domain.dart';

/// The object that represents the various states of the ideas screen
sealed class IdeasState {}

/// The state when the app is generating a new meal + drink combo
class IdeasLoading implements IdeasState {
  /// Constructs the IdeasLoading state
  const IdeasLoading();
}

/// The state displayed when the Ideas Screen encounters an error, such as
/// failing to load data from the local database or remote apis.
@immutable
class IdeasError implements IdeasState {
  /// Construct an error state with the error that occurred.
  const IdeasError(this.error);

  /// The error thrown, generally the error from the catch block.
  final Object error;

  @override
  String toString() {
    return 'IdeasError{error: $error}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is IdeasError &&
          runtimeType == other.runtimeType &&
          error == other.error;

  @override
  int get hashCode => error.hashCode;
}

/// The success state of the ideas screen, displayed when everything is loaded
/// correctly.
@immutable
class IdeasSuccess implements IdeasState {
  /// Contsruct the ideas success state with the necessary data
  const IdeasSuccess({
    required this.drinkLocked,
    required this.mealLocked,
    required this.meal,
    required this.drink,
    required this.isFavorite,
  });

  /// The meal shown on the ideas screen
  final Meal meal;

  /// The drink shown on the ideas screen
  final Drink drink;

  /// Whether or not the meal + drink combo is a favorite
  final bool isFavorite;

  /// Whether or not the meal should be locked. If locked, when a new idea is
  /// generated, the meal is kept in place.
  final bool mealLocked;

  /// Whether or not the drink should be locked. If locked, when a new idea is
  /// generated, the drink is kept in place.
  final bool drinkLocked;

  @override
  String toString() {
    // toString can be longer than 80 chars.
    // ignore: lines_longer_than_80_chars
    return 'IdeasSuccess{meal: ${meal.title}, drink: ${drink.title}, isFavorite: $isFavorite, mealLocked: $mealLocked, drinkLocked: $drinkLocked}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is IdeasSuccess &&
          runtimeType == other.runtimeType &&
          meal == other.meal &&
          drink == other.drink &&
          isFavorite == other.isFavorite &&
          mealLocked == other.mealLocked &&
          drinkLocked == other.drinkLocked;

  @override
  int get hashCode =>
      Object.hash(meal, drink, isFavorite, mealLocked, drinkLocked);
}
