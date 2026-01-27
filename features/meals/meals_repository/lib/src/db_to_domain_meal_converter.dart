import 'dart:convert';

import 'package:meals_database/meals_database.dart' as db;
import 'package:meals_domain/meals_domain.dart';

/// Converts Api Meals to Domain Meals
class DbToDomainMealConverter extends Converter<db.Meal, Meal> {
  /// Construct an object that converts Api Meals to Domain Meals
  const DbToDomainMealConverter();

  @override
  Meal convert(db.Meal dbMeal) {
    return Meal(
      id: dbMeal.idMeal,
      title: dbMeal.strMeal,
      mealAlternate: dbMeal.strMealAlternate,
      category: dbMeal.strCategory,
      area: dbMeal.strArea,
      instructions: dbMeal.strInstructions,
      thumbnail: dbMeal.strMealThumb,
      tags: dbMeal.strTags,
      youtube: dbMeal.strYoutube,
      ingredient1: dbMeal.strIngredient1,
      ingredient2: dbMeal.strIngredient2,
      ingredient3: dbMeal.strIngredient3,
      ingredient4: dbMeal.strIngredient4,
      ingredient5: dbMeal.strIngredient5,
      ingredient6: dbMeal.strIngredient6,
      ingredient7: dbMeal.strIngredient7,
      ingredient8: dbMeal.strIngredient8,
      ingredient9: dbMeal.strIngredient9,
      ingredient10: dbMeal.strIngredient10,
      ingredient11: dbMeal.strIngredient11,
      ingredient12: dbMeal.strIngredient12,
      ingredient13: dbMeal.strIngredient13,
      ingredient14: dbMeal.strIngredient14,
      ingredient15: dbMeal.strIngredient15,
      ingredient16: dbMeal.strIngredient16,
      ingredient17: dbMeal.strIngredient17,
      ingredient18: dbMeal.strIngredient18,
      ingredient19: dbMeal.strIngredient19,
      ingredient20: dbMeal.strIngredient20,
      measure1: dbMeal.strMeasure1,
      measure2: dbMeal.strMeasure2,
      measure3: dbMeal.strMeasure3,
      measure4: dbMeal.strMeasure4,
      measure5: dbMeal.strMeasure5,
      measure6: dbMeal.strMeasure6,
      measure7: dbMeal.strMeasure7,
      measure8: dbMeal.strMeasure8,
      measure9: dbMeal.strMeasure9,
      measure10: dbMeal.strMeasure10,
      measure11: dbMeal.strMeasure11,
      measure12: dbMeal.strMeasure12,
      measure13: dbMeal.strMeasure13,
      measure14: dbMeal.strMeasure14,
      measure15: dbMeal.strMeasure15,
      measure16: dbMeal.strMeasure16,
      measure17: dbMeal.strMeasure17,
      measure18: dbMeal.strMeasure18,
      measure19: dbMeal.strMeasure19,
      measure20: dbMeal.strMeasure20,
      source: dbMeal.strSource,
      imageSource: dbMeal.strImageSource,
      creativeCommonsConfirmed: dbMeal.strCreativeCommonsConfirmed,
      dateModified: dbMeal.dateModified,
    );
  }
}
