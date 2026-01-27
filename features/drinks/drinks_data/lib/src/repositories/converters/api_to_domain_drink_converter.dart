import 'dart:convert';

import 'package:drinks_data/src/data_sources/cocktaildb_api_client/api_drink.dart';
import 'package:drinks_domain/drinks_domain.dart';

/// Converts Api Meals to Domain Meals
class ApiToDomainDrinkConverter extends Converter<ApiDrink, Drink> {
  /// Construct an object that converts Api Meals to Domain Meals
  const ApiToDomainDrinkConverter();

  @override
  Drink convert(ApiDrink apiDrink) {
    return Drink(
      id: apiDrink.idDrink,
      title: apiDrink.strDrink,
      drinkAlternate: apiDrink.strDrinkAlternate,
      tags: apiDrink.strTags,
      video: apiDrink.strVideo,
      category: apiDrink.strCategory,
      iba: apiDrink.strIba,
      alcoholic: apiDrink.strAlcoholic,
      glass: apiDrink.strGlass,
      instructions: apiDrink.strInstructions,
      instructionsEs: apiDrink.strInstructionsEs,
      instructionsDe: apiDrink.strInstructionsDe,
      instructionsFr: apiDrink.strInstructionsFr,
      instructionsIt: apiDrink.strInstructionsIt,
      instructionsZhHans: apiDrink.strInstructionsZhHans,
      instructionsZhHant: apiDrink.strInstructionsZhHant,
      thumbnail: apiDrink.strDrinkThumb,
      ingredient1: apiDrink.strIngredient1,
      ingredient2: apiDrink.strIngredient2,
      ingredient3: apiDrink.strIngredient3,
      ingredient4: apiDrink.strIngredient4,
      ingredient5: apiDrink.strIngredient5,
      ingredient6: apiDrink.strIngredient6,
      ingredient7: apiDrink.strIngredient7,
      ingredient8: apiDrink.strIngredient8,
      ingredient9: apiDrink.strIngredient9,
      ingredient10: apiDrink.strIngredient10,
      ingredient11: apiDrink.strIngredient11,
      ingredient12: apiDrink.strIngredient12,
      ingredient13: apiDrink.strIngredient13,
      ingredient14: apiDrink.strIngredient14,
      ingredient15: apiDrink.strIngredient15,
      measure1: apiDrink.strMeasure1,
      measure2: apiDrink.strMeasure2,
      measure3: apiDrink.strMeasure3,
      measure4: apiDrink.strMeasure4,
      measure5: apiDrink.strMeasure5,
      measure6: apiDrink.strMeasure6,
      measure7: apiDrink.strMeasure7,
      measure8: apiDrink.strMeasure8,
      measure9: apiDrink.strMeasure9,
      measure10: apiDrink.strMeasure10,
      measure11: apiDrink.strMeasure11,
      measure12: apiDrink.strMeasure12,
      measure13: apiDrink.strMeasure13,
      measure14: apiDrink.strMeasure14,
      measure15: apiDrink.strMeasure15,
      imageSource: apiDrink.strImageSource,
      imageAttribution: apiDrink.strImageAttribution,
      creativeCommonsConfirmed: apiDrink.strCreativeCommonsConfirmed,
      dateModified: apiDrink.dateModified,
    );
  }
}
