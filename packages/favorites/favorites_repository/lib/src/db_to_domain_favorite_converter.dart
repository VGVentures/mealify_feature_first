import 'dart:convert';

import 'package:favorites_database/favorites_database.dart' as db;
import 'package:favorites_domain/favorites_domain.dart';

/// Converts Api Meals to Domain Meals
class DbToDomainFavoriteConverter extends Converter<db.Favorite, RawFavorite> {
  /// Construct an object that converts Api Meals to Domain Meals
  const DbToDomainFavoriteConverter();

  @override
  RawFavorite convert(db.Favorite dbFavorite) {
    return RawFavorite(
      id: dbFavorite.id,
      mealId: dbFavorite.mealId,
      drinkId: dbFavorite.drinkId,
      createdAt: dbFavorite.createdAt,
    );
  }
}
