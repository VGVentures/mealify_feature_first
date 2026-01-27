import 'dart:convert';

import 'package:drinks_data/src/data_sources/drinks_database/drinks_database.dart';
import 'package:drinks_domain/drinks_domain.dart';

/// Converts Database Drinks to Domain Drinks
class DbToDomainDrinkConverter extends Converter<DbDrink, Drink> {
  /// Construct an object that converts Database Drinks to Domain Drinks
  const DbToDomainDrinkConverter();

  @override
  Drink convert(DbDrink dbDrink) {
    return Drink(
      id: dbDrink.idDrink,
      title: dbDrink.strDrink,
      drinkAlternate: dbDrink.strDrinkAlternate,
      tags: dbDrink.strTags,
      video: dbDrink.strVideo,
      category: dbDrink.strCategory,
      iba: dbDrink.strIba,
      alcoholic: dbDrink.strAlcoholic,
      glass: dbDrink.strGlass,
      instructions: dbDrink.strInstructions,
      instructionsEs: dbDrink.strInstructionsEs,
      instructionsDe: dbDrink.strInstructionsDe,
      instructionsFr: dbDrink.strInstructionsFr,
      instructionsIt: dbDrink.strInstructionsIt,
      instructionsZhHans: dbDrink.strInstructionsZhHans,
      instructionsZhHant: dbDrink.strInstructionsZhHant,
      thumbnail: dbDrink.strDrinkThumb,
      ingredient1: dbDrink.strIngredient1,
      ingredient2: dbDrink.strIngredient2,
      ingredient3: dbDrink.strIngredient3,
      ingredient4: dbDrink.strIngredient4,
      ingredient5: dbDrink.strIngredient5,
      ingredient6: dbDrink.strIngredient6,
      ingredient7: dbDrink.strIngredient7,
      ingredient8: dbDrink.strIngredient8,
      ingredient9: dbDrink.strIngredient9,
      ingredient10: dbDrink.strIngredient10,
      ingredient11: dbDrink.strIngredient11,
      ingredient12: dbDrink.strIngredient12,
      ingredient13: dbDrink.strIngredient13,
      ingredient14: dbDrink.strIngredient14,
      ingredient15: dbDrink.strIngredient15,
      measure1: dbDrink.strMeasure1,
      measure2: dbDrink.strMeasure2,
      measure3: dbDrink.strMeasure3,
      measure4: dbDrink.strMeasure4,
      measure5: dbDrink.strMeasure5,
      measure6: dbDrink.strMeasure6,
      measure7: dbDrink.strMeasure7,
      measure8: dbDrink.strMeasure8,
      measure9: dbDrink.strMeasure9,
      measure10: dbDrink.strMeasure10,
      measure11: dbDrink.strMeasure11,
      measure12: dbDrink.strMeasure12,
      measure13: dbDrink.strMeasure13,
      measure14: dbDrink.strMeasure14,
      measure15: dbDrink.strMeasure15,
      imageSource: dbDrink.strImageSource,
      imageAttribution: dbDrink.strImageAttribution,
      creativeCommonsConfirmed: dbDrink.strCreativeCommonsConfirmed,
      dateModified: dbDrink.dateModified,
    );
  }
}
