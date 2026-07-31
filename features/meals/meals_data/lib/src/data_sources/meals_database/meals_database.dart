import 'package:drift/drift.dart';

part 'meals_database.g.dart';

/// The Drift database for the Meals in the Mealify App.
@DriftDatabase(
  include: {
    'meals.drift',
  },
)
class MealsDatabase extends _$MealsDatabase {
  /// Create an instance of the MealsDatabase. For testing, you can pass through
  /// a test executor. The application should pass along the correct executor
  /// depending on the environment (web vs native).
  MealsDatabase({required QueryExecutor queryExecutor}) : super(queryExecutor);

  /// Get a meal by [id]
  Future<DbMeal?> getMeal(String id) => findMealById(id).getSingleOrNull();

  /// Get several meals by id
  Future<List<DbMeal>> getMeals(List<String> ids) => findMealsByIds(ids).get();

  /// Save a meal to the database
  Future<void> saveMeal({
    required String idMeal,
    required String strMeal,
    required String strInstructions,
    required String strMealThumb,
    String? strMealAlternate,
    String? strCategory,
    String? strArea,
    String? strTags,
    String? strYoutube,
    String? strIngredient1,
    String? strIngredient2,
    String? strIngredient3,
    String? strIngredient4,
    String? strIngredient5,
    String? strIngredient6,
    String? strIngredient7,
    String? strIngredient8,
    String? strIngredient9,
    String? strIngredient10,
    String? strIngredient11,
    String? strIngredient12,
    String? strIngredient13,
    String? strIngredient14,
    String? strIngredient15,
    String? strIngredient16,
    String? strIngredient17,
    String? strIngredient18,
    String? strIngredient19,
    String? strIngredient20,
    String? strMeasure1,
    String? strMeasure2,
    String? strMeasure3,
    String? strMeasure4,
    String? strMeasure5,
    String? strMeasure6,
    String? strMeasure7,
    String? strMeasure8,
    String? strMeasure9,
    String? strMeasure10,
    String? strMeasure11,
    String? strMeasure12,
    String? strMeasure13,
    String? strMeasure14,
    String? strMeasure15,
    String? strMeasure16,
    String? strMeasure17,
    String? strMeasure18,
    String? strMeasure19,
    String? strMeasure20,
    String? strSource,
    String? strImageSource,
    String? strCreativeCommonsConfirmed,
    String? dateModified,
  }) {
    return into(meals).insertOnConflictUpdate(
      MealsCompanion.insert(
        idMeal: idMeal,
        strMeal: strMeal,
        strMealAlternate: Value.absentIfNull(strMealAlternate),
        strCategory: Value.absentIfNull(strCategory),
        strArea: Value.absentIfNull(strArea),
        strInstructions: strInstructions,
        strMealThumb: strMealThumb,
        strTags: Value.absentIfNull(strTags),
        strYoutube: Value.absentIfNull(strYoutube),
        strIngredient1: Value.absentIfNull(strIngredient1),
        strIngredient2: Value.absentIfNull(strIngredient2),
        strIngredient3: Value.absentIfNull(strIngredient3),
        strIngredient4: Value.absentIfNull(strIngredient4),
        strIngredient5: Value.absentIfNull(strIngredient5),
        strIngredient6: Value.absentIfNull(strIngredient6),
        strIngredient7: Value.absentIfNull(strIngredient7),
        strIngredient8: Value.absentIfNull(strIngredient8),
        strIngredient9: Value.absentIfNull(strIngredient9),
        strIngredient10: Value.absentIfNull(strIngredient10),
        strIngredient11: Value.absentIfNull(strIngredient11),
        strIngredient12: Value.absentIfNull(strIngredient12),
        strIngredient13: Value.absentIfNull(strIngredient13),
        strIngredient14: Value.absentIfNull(strIngredient14),
        strIngredient15: Value.absentIfNull(strIngredient15),
        strIngredient16: Value.absentIfNull(strIngredient16),
        strIngredient17: Value.absentIfNull(strIngredient17),
        strIngredient18: Value.absentIfNull(strIngredient18),
        strIngredient19: Value.absentIfNull(strIngredient19),
        strIngredient20: Value.absentIfNull(strIngredient20),
        strMeasure1: Value.absentIfNull(strMeasure1),
        strMeasure2: Value.absentIfNull(strMeasure2),
        strMeasure3: Value.absentIfNull(strMeasure3),
        strMeasure4: Value.absentIfNull(strMeasure4),
        strMeasure5: Value.absentIfNull(strMeasure5),
        strMeasure6: Value.absentIfNull(strMeasure6),
        strMeasure7: Value.absentIfNull(strMeasure7),
        strMeasure8: Value.absentIfNull(strMeasure8),
        strMeasure9: Value.absentIfNull(strMeasure9),
        strMeasure10: Value.absentIfNull(strMeasure10),
        strMeasure11: Value.absentIfNull(strMeasure11),
        strMeasure12: Value.absentIfNull(strMeasure12),
        strMeasure13: Value.absentIfNull(strMeasure13),
        strMeasure14: Value.absentIfNull(strMeasure14),
        strMeasure15: Value.absentIfNull(strMeasure15),
        strMeasure16: Value.absentIfNull(strMeasure16),
        strMeasure17: Value.absentIfNull(strMeasure17),
        strMeasure18: Value.absentIfNull(strMeasure18),
        strMeasure19: Value.absentIfNull(strMeasure19),
        strMeasure20: Value.absentIfNull(strMeasure20),
        strSource: Value.absentIfNull(strSource),
        strImageSource: Value.absentIfNull(strImageSource),
        strCreativeCommonsConfirmed: Value.absentIfNull(
          strCreativeCommonsConfirmed,
        ),
        dateModified: Value.absentIfNull(dateModified),
      ),
    );
  }

  @override
  int get schemaVersion => 1;
}
