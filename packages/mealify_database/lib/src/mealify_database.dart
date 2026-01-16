import 'package:drift/drift.dart';
import 'package:mealify_database/src/drinks/drinks_dao.dart';
import 'package:mealify_database/src/favorites/favorites_dao.dart';
import 'package:mealify_database/src/meals/meals_dao.dart';

part 'mealify_database.g.dart';

/// The Drift database for the Mealify App.
@DriftDatabase(
  include: {
    'drinks/drinks.drift',
    'favorites/favorites.drift',
    'meals/meals.drift',
  },
  daos: [MealsDao, DrinksDao, FavoritesDao],
)
class MealifyDatabase extends _$MealifyDatabase {
  /// Create an instance of the MealifyDatabase. For testing, you can pass
  /// through a test executor. The application should pass along the correct
  /// executor depending on the environment (web vs native).
  MealifyDatabase({required QueryExecutor queryExecutor})
    : super(queryExecutor);

  @override
  int get schemaVersion => 1;
}
