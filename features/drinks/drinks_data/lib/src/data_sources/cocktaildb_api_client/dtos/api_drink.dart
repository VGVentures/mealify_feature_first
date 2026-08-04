// No need to document every member for the demo app
// ignore_for_file: public_member_api_docs
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'api_drink.g.dart';

/// A drink from the CocktailDB api
///
/// The field names mirror the wire format rather than the domain, because this
/// is what the api sends, not what the app means. `ApiToDomainDrinkConverter`
/// does the translating. Parsing is generated: hand-writing it once cost 300
/// lines that no reader could check against the api.
@immutable
@JsonSerializable(createToJson: false)
class ApiDrink {
  /// Construct a drink
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

  /// Create an ApiDrink from a CocktailDB api json response
  factory ApiDrink.fromJson(Map<String, dynamic> json) =>
      _$ApiDrinkFromJson(json);

  final String idDrink;

  final String strDrink;

  final String? strDrinkAlternate;

  final String? strTags;

  final String? strVideo;

  final String? strCategory;

  @JsonKey(name: 'strIBA')
  final String? strIba;

  final String? strAlcoholic;

  final String? strGlass;

  final String strInstructions;

  @JsonKey(name: 'strInstructionsES')
  final String? strInstructionsEs;

  @JsonKey(name: 'strInstructionsDE')
  final String? strInstructionsDe;

  @JsonKey(name: 'strInstructionsFR')
  final String? strInstructionsFr;

  @JsonKey(name: 'strInstructionsIT')
  final String? strInstructionsIt;

  @JsonKey(name: 'strInstructionsZH-HANS')
  final String? strInstructionsZhHans;

  @JsonKey(name: 'strInstructionsZH-HANT')
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
}
