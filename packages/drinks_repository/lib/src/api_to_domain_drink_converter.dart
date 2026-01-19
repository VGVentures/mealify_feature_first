import 'dart:convert';

import 'package:cocktaildb_api_client/cocktaildb_api_client.dart' as api;
import 'package:drinks_repository/drinks_repository.dart';

/// Converts Api Meals to Domain Meals
class ApiToDomainDrinkConverter extends Converter<api.Drink, Drink> {
  /// Construct an object that converts Api Meals to Domain Meals
  const ApiToDomainDrinkConverter();

  @override
  Drink convert(api.Drink dbDrink) {
    return Drink(
      idDrink: dbDrink.idDrink,
      strDrink: dbDrink.strDrink,
      strDrinkAlternate: dbDrink.strDrinkAlternate,
      strTags: dbDrink.strTags,
      strVideo: dbDrink.strVideo,
      strCategory: dbDrink.strCategory,
      strIba: dbDrink.strIba,
      strAlcoholic: dbDrink.strAlcoholic,
      strGlass: dbDrink.strGlass,
      strInstructions: dbDrink.strInstructions,
      strInstructionsEs: dbDrink.strInstructionsEs,
      strInstructionsDe: dbDrink.strInstructionsDe,
      strInstructionsFr: dbDrink.strInstructionsFr,
      strInstructionsIt: dbDrink.strInstructionsIt,
      strInstructionsZhHans: dbDrink.strInstructionsZhHans,
      strInstructionsZhHant: dbDrink.strInstructionsZhHant,
      strDrinkThumb: dbDrink.strDrinkThumb,
      strIngredient1: dbDrink.strIngredient1,
      strIngredient2: dbDrink.strIngredient2,
      strIngredient3: dbDrink.strIngredient3,
      strIngredient4: dbDrink.strIngredient4,
      strIngredient5: dbDrink.strIngredient5,
      strIngredient6: dbDrink.strIngredient6,
      strIngredient7: dbDrink.strIngredient7,
      strIngredient8: dbDrink.strIngredient8,
      strIngredient9: dbDrink.strIngredient9,
      strIngredient10: dbDrink.strIngredient10,
      strIngredient11: dbDrink.strIngredient11,
      strIngredient12: dbDrink.strIngredient12,
      strIngredient13: dbDrink.strIngredient13,
      strIngredient14: dbDrink.strIngredient14,
      strIngredient15: dbDrink.strIngredient15,
      strMeasure1: dbDrink.strMeasure1,
      strMeasure2: dbDrink.strMeasure2,
      strMeasure3: dbDrink.strMeasure3,
      strMeasure4: dbDrink.strMeasure4,
      strMeasure5: dbDrink.strMeasure5,
      strMeasure6: dbDrink.strMeasure6,
      strMeasure7: dbDrink.strMeasure7,
      strMeasure8: dbDrink.strMeasure8,
      strMeasure9: dbDrink.strMeasure9,
      strMeasure10: dbDrink.strMeasure10,
      strMeasure11: dbDrink.strMeasure11,
      strMeasure12: dbDrink.strMeasure12,
      strMeasure13: dbDrink.strMeasure13,
      strMeasure14: dbDrink.strMeasure14,
      strMeasure15: dbDrink.strMeasure15,
      strImageSource: dbDrink.strImageSource,
      strImageAttribution: dbDrink.strImageAttribution,
      strCreativeCommonsConfirmed: dbDrink.strCreativeCommonsConfirmed,
      dateModified: dbDrink.dateModified,
    );
  }
}
