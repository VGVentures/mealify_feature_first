// No need to document every member for the demo app
// ignore_for_file: public_member_api_docs

import 'package:meta/meta.dart';

/// A drink from the CocktailDB api
@immutable
class ApiDrink {
  const ApiDrink({
    required this.idDrink,
    required this.strDrink,
    required this.strInstructions,
    required this.strDrinkThumb,
    this.strDrinkAlternate,
    this.strTags,
    this.strVideo,
    this.strCategory,
    this.strIba,
    this.strAlcoholic,
    this.strGlass,
    this.strInstructionsEs,
    this.strInstructionsDe,
    this.strInstructionsFr,
    this.strInstructionsIt,
    this.strInstructionsZhHans,
    this.strInstructionsZhHant,
    this.strIngredient1,
    this.strIngredient2,
    this.strIngredient3,
    this.strIngredient4,
    this.strIngredient5,
    this.strIngredient6,
    this.strIngredient7,
    this.strIngredient8,
    this.strIngredient9,
    this.strIngredient10,
    this.strIngredient11,
    this.strIngredient12,
    this.strIngredient13,
    this.strIngredient14,
    this.strIngredient15,
    this.strMeasure1,
    this.strMeasure2,
    this.strMeasure3,
    this.strMeasure4,
    this.strMeasure5,
    this.strMeasure6,
    this.strMeasure7,
    this.strMeasure8,
    this.strMeasure9,
    this.strMeasure10,
    this.strMeasure11,
    this.strMeasure12,
    this.strMeasure13,
    this.strMeasure14,
    this.strMeasure15,
    this.strImageSource,
    this.strImageAttribution,
    this.strCreativeCommonsConfirmed,
    this.dateModified,
  });

  /// Construct a Drink from a json response from the CocktailDB api
  factory ApiDrink.fromJson(Map<String, dynamic> json) {
    return ApiDrink(
      idDrink: json['idDrink'] as String,
      strDrink: json['strDrink'] as String,
      strDrinkAlternate: json['strDrinkAlternate'] as String?,
      strTags: json['strTags'] as String?,
      strVideo: json['strVideo'] as String?,
      strCategory: json['strCategory'] as String?,
      strIba: json['strIBA'] as String?,
      strAlcoholic: json['strAlcoholic'] as String?,
      strGlass: json['strGlass'] as String?,
      strInstructions: json['strInstructions'] as String,
      strInstructionsEs: json['strInstructionsES'] as String?,
      strInstructionsDe: json['strInstructionsDE'] as String?,
      strInstructionsFr: json['strInstructionsFR'] as String?,
      strInstructionsIt: json['strInstructionsIT'] as String?,
      strInstructionsZhHans: json['strInstructionsZH-HANS'] as String?,
      strInstructionsZhHant: json['strInstructionsZH-HANT'] as String?,
      strDrinkThumb: json['strDrinkThumb'] as String,
      strIngredient1: json['strIngredient1'] as String?,
      strIngredient2: json['strIngredient2'] as String?,
      strIngredient3: json['strIngredient3'] as String?,
      strIngredient4: json['strIngredient4'] as String?,
      strIngredient5: json['strIngredient5'] as String?,
      strIngredient6: json['strIngredient6'] as String?,
      strIngredient7: json['strIngredient7'] as String?,
      strIngredient8: json['strIngredient8'] as String?,
      strIngredient9: json['strIngredient9'] as String?,
      strIngredient10: json['strIngredient10'] as String?,
      strIngredient11: json['strIngredient11'] as String?,
      strIngredient12: json['strIngredient12'] as String?,
      strIngredient13: json['strIngredient13'] as String?,
      strIngredient14: json['strIngredient14'] as String?,
      strIngredient15: json['strIngredient15'] as String?,
      strMeasure1: json['strMeasure1'] as String?,
      strMeasure2: json['strMeasure2'] as String?,
      strMeasure3: json['strMeasure3'] as String?,
      strMeasure4: json['strMeasure4'] as String?,
      strMeasure5: json['strMeasure5'] as String?,
      strMeasure6: json['strMeasure6'] as String?,
      strMeasure7: json['strMeasure7'] as String?,
      strMeasure8: json['strMeasure8'] as String?,
      strMeasure9: json['strMeasure9'] as String?,
      strMeasure10: json['strMeasure10'] as String?,
      strMeasure11: json['strMeasure11'] as String?,
      strMeasure12: json['strMeasure12'] as String?,
      strMeasure13: json['strMeasure13'] as String?,
      strMeasure14: json['strMeasure14'] as String?,
      strMeasure15: json['strMeasure15'] as String?,
      strImageSource: json['strImageSource'] as String?,
      strImageAttribution: json['strImageAttribution'] as String?,
      strCreativeCommonsConfirmed:
          json['strCreativeCommonsConfirmed'] as String?,
      dateModified: json['dateModified'] as String?,
    );
  }

  final String idDrink;
  final String strDrink;
  final String? strDrinkAlternate;
  final String? strTags;
  final String? strVideo;
  final String? strCategory;
  final String? strIba;
  final String? strAlcoholic;
  final String? strGlass;
  final String strInstructions;
  final String? strInstructionsEs;
  final String? strInstructionsDe;
  final String? strInstructionsFr;
  final String? strInstructionsIt;
  final String? strInstructionsZhHans;
  final String? strInstructionsZhHant;
  final String strDrinkThumb;
  final String? strIngredient1;
  final String? strIngredient2;
  final String? strIngredient3;
  final String? strIngredient4;
  final String? strIngredient5;
  final String? strIngredient6;
  final String? strIngredient7;
  final String? strIngredient8;
  final String? strIngredient9;
  final String? strIngredient10;
  final String? strIngredient11;
  final String? strIngredient12;
  final String? strIngredient13;
  final String? strIngredient14;
  final String? strIngredient15;
  final String? strMeasure1;
  final String? strMeasure2;
  final String? strMeasure3;
  final String? strMeasure4;
  final String? strMeasure5;
  final String? strMeasure6;
  final String? strMeasure7;
  final String? strMeasure8;
  final String? strMeasure9;
  final String? strMeasure10;
  final String? strMeasure11;
  final String? strMeasure12;
  final String? strMeasure13;
  final String? strMeasure14;
  final String? strMeasure15;
  final String? strImageSource;
  final String? strImageAttribution;
  final String? strCreativeCommonsConfirmed;
  final String? dateModified;

  @override
  String toString() {
    // toString can be longer than 80 chars
    // ignore: lines_longer_than_80_chars
    return 'Drink{idDrink: $idDrink, strDrink: $strDrink, strDrinkAlternate: $strDrinkAlternate, strTags: $strTags, strVideo: $strVideo, strCategory: $strCategory, strIba: $strIba, strAlcoholic: $strAlcoholic, strGlass: $strGlass, strInstructions: $strInstructions, strInstructionsEs: $strInstructionsEs, strInstructionsDe: $strInstructionsDe, strInstructionsFr: $strInstructionsFr, strInstructionsIt: $strInstructionsIt, strInstructionsZhHans: $strInstructionsZhHans, strInstructionsZhHant: $strInstructionsZhHant, strDrinkThumb: $strDrinkThumb, strIngredient1: $strIngredient1, strIngredient2: $strIngredient2, strIngredient3: $strIngredient3, strIngredient4: $strIngredient4, strIngredient5: $strIngredient5, strIngredient6: $strIngredient6, strIngredient7: $strIngredient7, strIngredient8: $strIngredient8, strIngredient9: $strIngredient9, strIngredient10: $strIngredient10, strIngredient11: $strIngredient11, strIngredient12: $strIngredient12, strIngredient13: $strIngredient13, strIngredient14: $strIngredient14, strIngredient15: $strIngredient15, strMeasure1: $strMeasure1, strMeasure2: $strMeasure2, strMeasure3: $strMeasure3, strMeasure4: $strMeasure4, strMeasure5: $strMeasure5, strMeasure6: $strMeasure6, strMeasure7: $strMeasure7, strMeasure8: $strMeasure8, strMeasure9: $strMeasure9, strMeasure10: $strMeasure10, strMeasure11: $strMeasure11, strMeasure12: $strMeasure12, strMeasure13: $strMeasure13, strMeasure14: $strMeasure14, strMeasure15: $strMeasure15, strImageSource: $strImageSource, strImageAttribution: $strImageAttribution, strCreativeCommonsConfirmed: $strCreativeCommonsConfirmed, dateModified: $dateModified}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ApiDrink &&
          runtimeType == other.runtimeType &&
          idDrink == other.idDrink &&
          strDrink == other.strDrink &&
          strDrinkAlternate == other.strDrinkAlternate &&
          strTags == other.strTags &&
          strVideo == other.strVideo &&
          strCategory == other.strCategory &&
          strIba == other.strIba &&
          strAlcoholic == other.strAlcoholic &&
          strGlass == other.strGlass &&
          strInstructions == other.strInstructions &&
          strInstructionsEs == other.strInstructionsEs &&
          strInstructionsDe == other.strInstructionsDe &&
          strInstructionsFr == other.strInstructionsFr &&
          strInstructionsIt == other.strInstructionsIt &&
          strInstructionsZhHans == other.strInstructionsZhHans &&
          strInstructionsZhHant == other.strInstructionsZhHant &&
          strDrinkThumb == other.strDrinkThumb &&
          strIngredient1 == other.strIngredient1 &&
          strIngredient2 == other.strIngredient2 &&
          strIngredient3 == other.strIngredient3 &&
          strIngredient4 == other.strIngredient4 &&
          strIngredient5 == other.strIngredient5 &&
          strIngredient6 == other.strIngredient6 &&
          strIngredient7 == other.strIngredient7 &&
          strIngredient8 == other.strIngredient8 &&
          strIngredient9 == other.strIngredient9 &&
          strIngredient10 == other.strIngredient10 &&
          strIngredient11 == other.strIngredient11 &&
          strIngredient12 == other.strIngredient12 &&
          strIngredient13 == other.strIngredient13 &&
          strIngredient14 == other.strIngredient14 &&
          strIngredient15 == other.strIngredient15 &&
          strMeasure1 == other.strMeasure1 &&
          strMeasure2 == other.strMeasure2 &&
          strMeasure3 == other.strMeasure3 &&
          strMeasure4 == other.strMeasure4 &&
          strMeasure5 == other.strMeasure5 &&
          strMeasure6 == other.strMeasure6 &&
          strMeasure7 == other.strMeasure7 &&
          strMeasure8 == other.strMeasure8 &&
          strMeasure9 == other.strMeasure9 &&
          strMeasure10 == other.strMeasure10 &&
          strMeasure11 == other.strMeasure11 &&
          strMeasure12 == other.strMeasure12 &&
          strMeasure13 == other.strMeasure13 &&
          strMeasure14 == other.strMeasure14 &&
          strMeasure15 == other.strMeasure15 &&
          strImageSource == other.strImageSource &&
          strImageAttribution == other.strImageAttribution &&
          strCreativeCommonsConfirmed == other.strCreativeCommonsConfirmed &&
          dateModified == other.dateModified;

  @override
  int get hashCode => Object.hashAll([
    idDrink,
    strDrink,
    strDrinkAlternate,
    strTags,
    strVideo,
    strCategory,
    strIba,
    strAlcoholic,
    strGlass,
    strInstructions,
    strInstructionsEs,
    strInstructionsDe,
    strInstructionsFr,
    strInstructionsIt,
    strInstructionsZhHans,
    strInstructionsZhHant,
    strDrinkThumb,
    strIngredient1,
    strIngredient2,
    strIngredient3,
    strIngredient4,
    strIngredient5,
    strIngredient6,
    strIngredient7,
    strIngredient8,
    strIngredient9,
    strIngredient10,
    strIngredient11,
    strIngredient12,
    strIngredient13,
    strIngredient14,
    strIngredient15,
    strMeasure1,
    strMeasure2,
    strMeasure3,
    strMeasure4,
    strMeasure5,
    strMeasure6,
    strMeasure7,
    strMeasure8,
    strMeasure9,
    strMeasure10,
    strMeasure11,
    strMeasure12,
    strMeasure13,
    strMeasure14,
    strMeasure15,
    strImageSource,
    strImageAttribution,
    strCreativeCommonsConfirmed,
    dateModified,
  ]);
}
