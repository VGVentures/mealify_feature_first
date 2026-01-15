// No need to document every member for the demo app
// ignore_for_file: public_member_api_docs
import 'package:meta/meta.dart';

@immutable
class Meal {
  const Meal._({
    this.idMeal,
    this.strMeal,
    this.strMealAlternate,
    this.strCategory,
    this.strArea,
    this.strInstructions,
    this.strMealThumb,
    this.strTags,
    this.strYoutube,
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
    this.strIngredient16,
    this.strIngredient17,
    this.strIngredient18,
    this.strIngredient19,
    this.strIngredient20,
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
    this.strMeasure16,
    this.strMeasure17,
    this.strMeasure18,
    this.strMeasure19,
    this.strMeasure20,
    this.strSource,
    this.strImageSource,
    this.strCreativeCommonsConfirmed,
    this.dateModified,
  });

  /// Create a Meal object from a MealDB api json response
  factory Meal.fromJson(Map<String, dynamic> json) {
    return Meal._(
      idMeal: json['idMeal'] as String?,
      strMeal: json['strMeal'] as String?,
      strMealAlternate: json['strMealAlternate'] as String?,
      strCategory: json['strCategory'] as String?,
      strArea: json['strArea'] as String?,
      strInstructions: json['strInstructions'] as String?,
      strMealThumb: json['strMealThumb'] as String?,
      strTags: json['strTags'] as String?,
      strYoutube: json['strYoutube'] as String?,
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
      strIngredient16: json['strIngredient16'] as String?,
      strIngredient17: json['strIngredient17'] as String?,
      strIngredient18: json['strIngredient18'] as String?,
      strIngredient19: json['strIngredient19'] as String?,
      strIngredient20: json['strIngredient20'] as String?,
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
      strMeasure16: json['strMeasure16'] as String?,
      strMeasure17: json['strMeasure17'] as String?,
      strMeasure18: json['strMeasure18'] as String?,
      strMeasure19: json['strMeasure19'] as String?,
      strMeasure20: json['strMeasure20'] as String?,
      strSource: json['strSource'] as String?,
      strImageSource: json['strImageSource'] as String?,
      strCreativeCommonsConfirmed:
          json['strCreativeCommonsConfirmed'] as String?,
      dateModified: json['dateModified'] as String?,
    );
  }

  final String? idMeal;
  final String? strMeal;
  final String? strMealAlternate;
  final String? strCategory;
  final String? strArea;
  final String? strInstructions;
  final String? strMealThumb;
  final String? strTags;
  final String? strYoutube;
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
  final String? strIngredient16;
  final String? strIngredient17;
  final String? strIngredient18;
  final String? strIngredient19;
  final String? strIngredient20;
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
  final String? strMeasure16;
  final String? strMeasure17;
  final String? strMeasure18;
  final String? strMeasure19;
  final String? strMeasure20;
  final String? strSource;
  final String? strImageSource;
  final String? strCreativeCommonsConfirmed;
  final String? dateModified;
}
