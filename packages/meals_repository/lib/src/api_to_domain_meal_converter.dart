import 'dart:convert';

import 'package:mealdb_api_client/mealdb_api_client.dart' as api;
import 'package:meals_repository/src/meal.dart';

/// Converts Api Meals to Domain Meals
class ApiToDomainMealConverter extends Converter<api.Meal, Meal> {
  /// Construct an object that converts Api Meals to Domain Meals
  const ApiToDomainMealConverter();

  @override
  Meal convert(api.Meal dbMeal) {
    return Meal(
      idMeal: dbMeal.idMeal,
      strMeal: dbMeal.strMeal,
      strMealAlternate: dbMeal.strMealAlternate,
      strCategory: dbMeal.strCategory,
      strArea: dbMeal.strArea,
      strInstructions: dbMeal.strInstructions,
      strMealThumb: dbMeal.strMealThumb,
      strTags: dbMeal.strTags,
      strYoutube: dbMeal.strYoutube,
      strIngredient1: dbMeal.strIngredient1,
      strIngredient2: dbMeal.strIngredient2,
      strIngredient3: dbMeal.strIngredient3,
      strIngredient4: dbMeal.strIngredient4,
      strIngredient5: dbMeal.strIngredient5,
      strIngredient6: dbMeal.strIngredient6,
      strIngredient7: dbMeal.strIngredient7,
      strIngredient8: dbMeal.strIngredient8,
      strIngredient9: dbMeal.strIngredient9,
      strIngredient10: dbMeal.strIngredient10,
      strIngredient11: dbMeal.strIngredient11,
      strIngredient12: dbMeal.strIngredient12,
      strIngredient13: dbMeal.strIngredient13,
      strIngredient14: dbMeal.strIngredient14,
      strIngredient15: dbMeal.strIngredient15,
      strIngredient16: dbMeal.strIngredient16,
      strIngredient17: dbMeal.strIngredient17,
      strIngredient18: dbMeal.strIngredient18,
      strIngredient19: dbMeal.strIngredient19,
      strIngredient20: dbMeal.strIngredient20,
      strMeasure1: dbMeal.strMeasure1,
      strMeasure2: dbMeal.strMeasure2,
      strMeasure3: dbMeal.strMeasure3,
      strMeasure4: dbMeal.strMeasure4,
      strMeasure5: dbMeal.strMeasure5,
      strMeasure6: dbMeal.strMeasure6,
      strMeasure7: dbMeal.strMeasure7,
      strMeasure8: dbMeal.strMeasure8,
      strMeasure9: dbMeal.strMeasure9,
      strMeasure10: dbMeal.strMeasure10,
      strMeasure11: dbMeal.strMeasure11,
      strMeasure12: dbMeal.strMeasure12,
      strMeasure13: dbMeal.strMeasure13,
      strMeasure14: dbMeal.strMeasure14,
      strMeasure15: dbMeal.strMeasure15,
      strMeasure16: dbMeal.strMeasure16,
      strMeasure17: dbMeal.strMeasure17,
      strMeasure18: dbMeal.strMeasure18,
      strMeasure19: dbMeal.strMeasure19,
      strMeasure20: dbMeal.strMeasure20,
      strSource: dbMeal.strSource,
      strImageSource: dbMeal.strImageSource,
      strCreativeCommonsConfirmed: dbMeal.strCreativeCommonsConfirmed,
      dateModified: dbMeal.dateModified,
    );
  }
}
