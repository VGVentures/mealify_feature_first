import 'package:drift/drift.dart';
import 'package:mealify_database/mealify_database.dart';

part 'meals_dao.g.dart';

/// A class that interacts with Meals in the [MealifyDatabase]
@DriftAccessor(include: {'meals.drift'})
class MealsDao extends DatabaseAccessor<MealifyDatabase> with _$MealsDaoMixin {
  /// Construct an object that interacts with Meals in the [MealifyDatabase]
  MealsDao(super.attachedDatabase);

  /// Get a meal by [id]
  Future<Meal?> getMeal(String id) => findMealById(id).getSingleOrNull();

  /// Get several meals by id
  Future<List<Meal>> getMeals(List<String> ids) => findMealsByIds(ids).get();

  /// Save a meal to the database
  Future<void> saveMeal(MealsCompanion entry) {
    return into(meals).insertOnConflictUpdate(entry);
  }
}
