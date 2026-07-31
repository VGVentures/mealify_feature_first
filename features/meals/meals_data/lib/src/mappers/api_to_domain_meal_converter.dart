import 'dart:convert';

import 'package:meals_data/src/data_sources/mealdb_api_client/dtos/api_meal.dart';
import 'package:meals_domain/meals_domain.dart';

/// Converts Api Meals to Domain Meals
class ApiToDomainMealConverter extends Converter<ApiMeal, Meal> {
  /// Construct an object that converts Api Meals to Domain Meals
  const ApiToDomainMealConverter();

  @override
  Meal convert(ApiMeal apiMeal) {
    return Meal(
      id: apiMeal.idMeal,
      title: apiMeal.strMeal,
      mealAlternate: apiMeal.strMealAlternate,
      category: apiMeal.strCategory,
      area: apiMeal.strArea,
      instructions: apiMeal.strInstructions,
      thumbnail: apiMeal.strMealThumb,
      tags: apiMeal.strTags,
      youtube: apiMeal.strYoutube,
      ingredient1: apiMeal.strIngredient1,
      ingredient2: apiMeal.strIngredient2,
      ingredient3: apiMeal.strIngredient3,
      ingredient4: apiMeal.strIngredient4,
      ingredient5: apiMeal.strIngredient5,
      ingredient6: apiMeal.strIngredient6,
      ingredient7: apiMeal.strIngredient7,
      ingredient8: apiMeal.strIngredient8,
      ingredient9: apiMeal.strIngredient9,
      ingredient10: apiMeal.strIngredient10,
      ingredient11: apiMeal.strIngredient11,
      ingredient12: apiMeal.strIngredient12,
      ingredient13: apiMeal.strIngredient13,
      ingredient14: apiMeal.strIngredient14,
      ingredient15: apiMeal.strIngredient15,
      ingredient16: apiMeal.strIngredient16,
      ingredient17: apiMeal.strIngredient17,
      ingredient18: apiMeal.strIngredient18,
      ingredient19: apiMeal.strIngredient19,
      ingredient20: apiMeal.strIngredient20,
      measure1: apiMeal.strMeasure1,
      measure2: apiMeal.strMeasure2,
      measure3: apiMeal.strMeasure3,
      measure4: apiMeal.strMeasure4,
      measure5: apiMeal.strMeasure5,
      measure6: apiMeal.strMeasure6,
      measure7: apiMeal.strMeasure7,
      measure8: apiMeal.strMeasure8,
      measure9: apiMeal.strMeasure9,
      measure10: apiMeal.strMeasure10,
      measure11: apiMeal.strMeasure11,
      measure12: apiMeal.strMeasure12,
      measure13: apiMeal.strMeasure13,
      measure14: apiMeal.strMeasure14,
      measure15: apiMeal.strMeasure15,
      measure16: apiMeal.strMeasure16,
      measure17: apiMeal.strMeasure17,
      measure18: apiMeal.strMeasure18,
      measure19: apiMeal.strMeasure19,
      measure20: apiMeal.strMeasure20,
      source: apiMeal.strSource,
      imageSource: apiMeal.strImageSource,
      creativeCommonsConfirmed: apiMeal.strCreativeCommonsConfirmed,
      dateModified: apiMeal.dateModified,
    );
  }
}
