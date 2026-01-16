import 'package:clock/clock.dart';
import 'package:drift/drift.dart';
import 'package:mealify_database/mealify_database.dart';
import 'package:uuid/uuid.dart';

part 'favorites_dao.g.dart';

/// A class that interacts with Favorites in the [MealifyDatabase]
@DriftAccessor(include: {'favorites.drift'})
class FavoritesDao extends DatabaseAccessor<MealifyDatabase>
    with _$FavoritesDaoMixin {
  /// Construct an object that interacts with Favorites in the [MealifyDatabase]
  FavoritesDao(super.attachedDatabase);

  /// Get a favorite
  Future<Favorite?> getFavorite(String favoriteId) =>
      findFavoriteById(favoriteId).getSingleOrNull();

  /// Get all favorites
  Future<List<Favorite>> getAll() => findAllFavorites().get();

  /// Add a favorite to the database
  Future<void> addFavorite({
    required String mealId,
    required String drinkId,
    String? id,
  }) {
    return into(favorites).insert(
      FavoritesCompanion.insert(
        id: id ?? const Uuid().v4(),
        mealId: mealId,
        drinkId: drinkId,
        createdAt: clock.now(),
      ),
      mode: InsertMode.insertOrIgnore,
    );
  }

  /// Remove a favorite from the database
  Future<void> removeFavorite(String favoriteId) => deleteFavorite(favoriteId);
}
