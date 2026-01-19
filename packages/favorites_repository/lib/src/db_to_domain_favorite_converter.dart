import 'dart:convert';

import 'package:favorites_repository/src/favorite.dart';
import 'package:mealify_database/mealify_database.dart' as db;

/// Converts Api Meals to Domain Meals
class DbToDomainFavoriteConverter extends Converter<db.Favorite, Favorite> {
  /// Construct an object that converts Api Meals to Domain Meals
  const DbToDomainFavoriteConverter();

  @override
  Favorite convert(db.Favorite dbFavorite) {
    return Favorite(
      id: dbFavorite.id,
      mealId: dbFavorite.mealId,
      drinkId: dbFavorite.drinkId,
      createdAt: dbFavorite.createdAt,
    );
  }
}
