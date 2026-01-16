import 'package:drift/drift.dart';
import 'package:mealify_database/mealify_database.dart';

part 'drinks_dao.g.dart';

/// A class that interacts with Drinks in the [MealifyDatabase]
@DriftAccessor(include: {'drinks.drift'})
class DrinksDao extends DatabaseAccessor<MealifyDatabase>
    with _$DrinksDaoMixin {
  /// Construct an object that interacts with Drinks in the [MealifyDatabase]
  DrinksDao(super.attachedDatabase);

  /// Get a single drink from the database by id
  Future<Drink?> getDrink(String id) => findDrinkById(id).getSingleOrNull();

  /// Get a list of drinks from the database
  Future<List<Drink>> getDrinks(List<String> ids) => findDrinksByIds(ids).get();

  /// Save a drink to the database
  Future<void> saveDrink(DrinksCompanion entry) {
    return into(drinks).insertOnConflictUpdate(entry);
  }
}
