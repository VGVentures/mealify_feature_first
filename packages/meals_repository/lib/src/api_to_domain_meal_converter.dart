import 'dart:convert';

import 'package:mealdb_api_client/mealdb_api_client.dart' as api;
import 'package:meals_repository/src/meal.dart';

/// Converts Api Meals to Domain Meals
class ApiToDomainMealConverter extends Converter<api.Meal, Meal> {
  /// Construct an object that converts Api Meals to Domain Meals
  const ApiToDomainMealConverter();

  @override
  Meal convert(api.Meal apiMeal) {
    return Meal(
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
