import 'dart:convert';

import 'package:favorites_data/src/data_sources/favorites_database/favorites_database.dart';
import 'package:favorites_domain/favorites_domain.dart';

/// Converts Api Meals to Domain Meals
class DbToDomainFavoriteConverter extends Converter<DbFavorite, RawFavorite> {
  /// Construct an object that converts Api Meals to Domain Meals
  const DbToDomainFavoriteConverter();

  @override
  RawFavorite convert(DbFavorite dbFavorite) {
    return RawFavorite(
      id: dbFavorite.id,
      mealId: dbFavorite.mealId,
      drinkId: dbFavorite.drinkId,
      createdAt: dbFavorite.createdAt,
    );
  }
}
