import 'package:drinks_repository/drinks_repository.dart';
import 'package:flutter/cupertino.dart';
import 'package:meals_repository/meals_repository.dart';

sealed class IdeasState {}

class IdeasLoading implements IdeasState {
  const IdeasLoading();
}

@immutable
class IdeasError implements IdeasState {
  const IdeasError(this.error);

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

@immutable
class IdeasSuccess implements IdeasState {
  const IdeasSuccess({
    required this.meal,
    required this.drink,
    required this.isFavorite,
  });

  final Meal meal;
  final Drink drink;
  final bool isFavorite;

  @override
  String toString() {
    return 'IdeasSuccess{meal: $meal, drink: $drink, isFavorite: $isFavorite}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is IdeasSuccess &&
          runtimeType == other.runtimeType &&
          meal == other.meal &&
          drink == other.drink &&
          isFavorite == other.isFavorite;

  @override
  int get hashCode => Object.hash(meal, drink, isFavorite);
}
