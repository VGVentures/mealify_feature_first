import 'dart:convert';

import 'package:favorites_data/src/data_sources/favorites_database/favorites_database.dart';
import 'package:favorites_domain/favorites_domain.dart';

/// Converts database favorites to domain favorites.
class DbToDomainFavoriteConverter extends Converter<DbFavorite, Favorite> {
  /// Construct an object that converts database favorites to domain favorites.
  const DbToDomainFavoriteConverter();

  @override
  Favorite convert(DbFavorite dbFavorite) {
    return Favorite(
      id: dbFavorite.id,
      mealId: dbFavorite.mealId,
      drinkId: dbFavorite.drinkId,
      createdAt: dbFavorite.createdAt,
    );
  }
}
