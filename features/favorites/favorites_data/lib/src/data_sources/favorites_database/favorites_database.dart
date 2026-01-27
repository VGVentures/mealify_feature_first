import 'package:clock/clock.dart';
import 'package:drift/drift.dart';
import 'package:uuid/uuid.dart';

part 'favorites_database.g.dart';

/// The Drift database for the Mealify App.
@DriftDatabase(
  include: {
    'favorites.drift',
  },
)
class FavoritesDatabase extends _$FavoritesDatabase {
  /// Create an instance of the FavoritesDatabase. For testing, you can pass
  /// through a test executor. The application should pass along the correct
  /// executor depending on the environment (web vs native).
  FavoritesDatabase({required QueryExecutor queryExecutor})
    : super(queryExecutor);

  /// Get a favorite
  Future<DbFavorite?> getFavorite(String favoriteId) =>
      findFavoriteById(favoriteId).getSingleOrNull();

  /// Watch the list of favorites
  Stream<List<String>> watchAllIds() => findAllFavoriteIds().watch();

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
  Future<void> removeFavorite(String favoriteId) =>
      deleteFavoriteById(favoriteId);

  /// Remove a favorite from the database by meal and drink id
  Future<void> removeFavoriteByMealAndDrinkId({
    required String mealId,
    required String drinkId,
  }) => deleteFavoriteByMealAndDrink(mealId, drinkId);

  /// Watches whether or not a combo of meal + drink is a favorite
  Stream<bool> watchIsFavorite(String mealId, String drinkId) {
    return isFavorite(mealId, drinkId).watchSingle();
  }

  @override
  int get schemaVersion => 1;
}
