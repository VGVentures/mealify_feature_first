import 'package:meals_data/src/data_sources/mealdb_api_client/api_meal.dart';
import 'package:meals_data/src/data_sources/mealdb_api_client/mealdb_api_client.dart';
import 'package:meals_data/src/data_sources/meals_database/meals_database.dart';
import 'package:meals_data/src/repositories/api_to_domain_meal_converter.dart';
import 'package:meals_data/src/repositories/db_to_domain_meal_converter.dart';
import 'package:meals_domain/meals_domain.dart';

/// A class that coordinates meal objects from the remote MealDb Api and the
/// local MealifyDatabase.
class MealsRepository implements IMealsRepository {
  /// Construct an object that coordinates local and remote data sources for
  /// meals
  const MealsRepository({
    required MealsDatabase mealsDb,
    required MealDbApiClient mealDbApiClient,
    ApiToDomainMealConverter apiToDomainMealConverter =
        const ApiToDomainMealConverter(),
    DbToDomainMealConverter dbToDomainMealConverter =
        const DbToDomainMealConverter(),
  }) : _mealsDb = mealsDb,
       _mealDbApiClient = mealDbApiClient,
       _apiToDomainMealConverter = apiToDomainMealConverter,
       _dbToDomainMealConverter = dbToDomainMealConverter;

  final MealsDatabase _mealsDb;
  final MealDbApiClient _mealDbApiClient;
  final ApiToDomainMealConverter _apiToDomainMealConverter;
  final DbToDomainMealConverter _dbToDomainMealConverter;

  /// Gets a meal by id. First tries the local database, falls back to the
  /// internet if one doesn't exist.
  @override
  Future<Meal> getMealById(String id) async {
    final dbMeal = await _mealsDb.getMeal(id);

    if (dbMeal != null) {
      return _dbToDomainMealConverter.convert(dbMeal);
    }

    final apiMeal = await _mealDbApiClient.fetchMealById(id);
    await _saveMealToDatabase(apiMeal);
    return _apiToDomainMealConverter.convert(apiMeal);
  }

  /// Gets a random meal from the internet and stores it in the database.
  @override
  Future<Meal> getRandomMeal() async {
    final apiMeal = await _mealDbApiClient.fetchRandomMeal();
    await _saveMealToDatabase(apiMeal);
    return _apiToDomainMealConverter.convert(apiMeal);
  }

  Future<void> _saveMealToDatabase(ApiMeal apiMeal) {
    return _mealsDb.saveMeal(
      idMeal: apiMeal.idMeal,
      strMeal: apiMeal.strMeal,
      strMealAlternate: apiMeal.strMealAlternate,
      strCategory: apiMeal.strCategory,
      strArea: apiMeal.strArea,
      strInstructions: apiMeal.strInstructions,
      strMealThumb: apiMeal.strMealThumb,
      strTags: apiMeal.strTags,
      strYoutube: apiMeal.strYoutube,
      strIngredient1: apiMeal.strIngredient1,
      strIngredient2: apiMeal.strIngredient2,
      strIngredient3: apiMeal.strIngredient3,
      strIngredient4: apiMeal.strIngredient4,
      strIngredient5: apiMeal.strIngredient5,
      strIngredient6: apiMeal.strIngredient6,
      strIngredient7: apiMeal.strIngredient7,
      strIngredient8: apiMeal.strIngredient8,
      strIngredient9: apiMeal.strIngredient9,
      strIngredient10: apiMeal.strIngredient10,
      strIngredient11: apiMeal.strIngredient11,
      strIngredient12: apiMeal.strIngredient12,
      strIngredient13: apiMeal.strIngredient13,
      strIngredient14: apiMeal.strIngredient14,
      strIngredient15: apiMeal.strIngredient15,
      strIngredient16: apiMeal.strIngredient16,
      strIngredient17: apiMeal.strIngredient17,
      strIngredient18: apiMeal.strIngredient18,
      strIngredient19: apiMeal.strIngredient19,
      strIngredient20: apiMeal.strIngredient20,
      strMeasure1: apiMeal.strMeasure1,
      strMeasure2: apiMeal.strMeasure2,
      strMeasure3: apiMeal.strMeasure3,
      strMeasure4: apiMeal.strMeasure4,
      strMeasure5: apiMeal.strMeasure5,
      strMeasure6: apiMeal.strMeasure6,
      strMeasure7: apiMeal.strMeasure7,
      strMeasure8: apiMeal.strMeasure8,
      strMeasure9: apiMeal.strMeasure9,
      strMeasure10: apiMeal.strMeasure10,
      strMeasure11: apiMeal.strMeasure11,
      strMeasure12: apiMeal.strMeasure12,
      strMeasure13: apiMeal.strMeasure13,
      strMeasure14: apiMeal.strMeasure14,
      strMeasure15: apiMeal.strMeasure15,
      strMeasure16: apiMeal.strMeasure16,
      strMeasure17: apiMeal.strMeasure17,
      strMeasure18: apiMeal.strMeasure18,
      strMeasure19: apiMeal.strMeasure19,
      strMeasure20: apiMeal.strMeasure20,
      strSource: apiMeal.strSource,
      strImageSource: apiMeal.strImageSource,
      strCreativeCommonsConfirmed: apiMeal.strCreativeCommonsConfirmed,
      dateModified: apiMeal.dateModified,
    );
  }
}
