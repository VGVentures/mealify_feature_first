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
  const IdeasSuccess({required this.meal, required this.drink});

  final Meal meal;
  final Drink drink;

  @override
  String toString() {
    return 'IdeasSuccess{meal: $meal, drink: $drink}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is IdeasSuccess &&
          runtimeType == other.runtimeType &&
          meal == other.meal &&
          drink == other.drink;

  @override
  int get hashCode => Object.hash(meal, drink);
}
