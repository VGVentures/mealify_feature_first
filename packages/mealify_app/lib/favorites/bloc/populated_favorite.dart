import 'package:drinks_repository/drinks_repository.dart';
import 'package:flutter/cupertino.dart';
import 'package:meals_repository/meals_repository.dart';

@immutable
class PopulatedFavorite {
  const PopulatedFavorite({
    required this.favoriteId,
    required this.meal,
    required this.drink,
    required this.createAt,
  });

  final String favoriteId;
  final Meal meal;
  final Drink drink;
  final DateTime createAt;

  @override
  String toString() {
    // No need to spread this over several lines
    // ignore: lines_longer_than_80_chars
    return 'PopulatedFavorite{favoriteId: $favoriteId, meal: $meal, drink: $drink, createAt: $createAt}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PopulatedFavorite &&
          runtimeType == other.runtimeType &&
          favoriteId == other.favoriteId &&
          meal == other.meal &&
          drink == other.drink &&
          createAt == other.createAt;

  @override
  int get hashCode => Object.hash(favoriteId, meal, drink, createAt);
}
