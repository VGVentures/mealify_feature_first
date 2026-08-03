// Asserts every field against the exact wire key it comes from. Parsing is
// generated, so only a test at this granularity notices when a generated key
// stops matching what TheCocktailDB actually sends. The ones that matter
// most are those whose Dart name differs from the wire key.
import 'package:drinks_data/src/data_sources/cocktaildb_api_client/dtos/api_drink.dart';
import 'package:test/test.dart';

/// Fails unless [value] came from `json['key']`.
void readsKey(String key, String? value) =>
    expect(value, '$key-value', reason: 'must be read from $key');

/// Fails unless an absent `json['key']` left [value] null.
void absentKeyIsNull(String key, String? value) =>
    expect(value, isNull, reason: 'must be null when $key is absent');

void main() {
  group('ApiDrink.fromJson', () {
    test('reads every field from its wire key', () {
      final dto = ApiDrink.fromJson(const <String, dynamic>{
        'idDrink': 'idDrink-value',
        'strDrink': 'strDrink-value',
        'strDrinkAlternate': 'strDrinkAlternate-value',
        'strTags': 'strTags-value',
        'strVideo': 'strVideo-value',
        'strCategory': 'strCategory-value',
        'strIBA': 'strIBA-value',
        'strAlcoholic': 'strAlcoholic-value',
        'strGlass': 'strGlass-value',
        'strInstructions': 'strInstructions-value',
        'strInstructionsES': 'strInstructionsES-value',
        'strInstructionsDE': 'strInstructionsDE-value',
        'strInstructionsFR': 'strInstructionsFR-value',
        'strInstructionsIT': 'strInstructionsIT-value',
        'strInstructionsZH-HANS': 'strInstructionsZH-HANS-value',
        'strInstructionsZH-HANT': 'strInstructionsZH-HANT-value',
        'strDrinkThumb': 'strDrinkThumb-value',
        'strIngredient1': 'strIngredient1-value',
        'strIngredient2': 'strIngredient2-value',
        'strIngredient3': 'strIngredient3-value',
        'strIngredient4': 'strIngredient4-value',
        'strIngredient5': 'strIngredient5-value',
        'strIngredient6': 'strIngredient6-value',
        'strIngredient7': 'strIngredient7-value',
        'strIngredient8': 'strIngredient8-value',
        'strIngredient9': 'strIngredient9-value',
        'strIngredient10': 'strIngredient10-value',
        'strIngredient11': 'strIngredient11-value',
        'strIngredient12': 'strIngredient12-value',
        'strIngredient13': 'strIngredient13-value',
        'strIngredient14': 'strIngredient14-value',
        'strIngredient15': 'strIngredient15-value',
        'strMeasure1': 'strMeasure1-value',
        'strMeasure2': 'strMeasure2-value',
        'strMeasure3': 'strMeasure3-value',
        'strMeasure4': 'strMeasure4-value',
        'strMeasure5': 'strMeasure5-value',
        'strMeasure6': 'strMeasure6-value',
        'strMeasure7': 'strMeasure7-value',
        'strMeasure8': 'strMeasure8-value',
        'strMeasure9': 'strMeasure9-value',
        'strMeasure10': 'strMeasure10-value',
        'strMeasure11': 'strMeasure11-value',
        'strMeasure12': 'strMeasure12-value',
        'strMeasure13': 'strMeasure13-value',
        'strMeasure14': 'strMeasure14-value',
        'strMeasure15': 'strMeasure15-value',
        'strImageSource': 'strImageSource-value',
        'strImageAttribution': 'strImageAttribution-value',
        'strCreativeCommonsConfirmed': 'strCreativeCommonsConfirmed-value',
        'dateModified': 'dateModified-value',
      });

      readsKey('idDrink', dto.idDrink);
      readsKey('strDrink', dto.strDrink);
      readsKey('strDrinkAlternate', dto.strDrinkAlternate);
      readsKey('strTags', dto.strTags);
      readsKey('strVideo', dto.strVideo);
      readsKey('strCategory', dto.strCategory);
      readsKey('strIBA', dto.strIba);
      readsKey('strAlcoholic', dto.strAlcoholic);
      readsKey('strGlass', dto.strGlass);
      readsKey('strInstructions', dto.strInstructions);
      readsKey('strInstructionsES', dto.strInstructionsEs);
      readsKey('strInstructionsDE', dto.strInstructionsDe);
      readsKey('strInstructionsFR', dto.strInstructionsFr);
      readsKey('strInstructionsIT', dto.strInstructionsIt);
      readsKey('strInstructionsZH-HANS', dto.strInstructionsZhHans);
      readsKey('strInstructionsZH-HANT', dto.strInstructionsZhHant);
      readsKey('strDrinkThumb', dto.strDrinkThumb);
      readsKey('strIngredient1', dto.strIngredient1);
      readsKey('strIngredient2', dto.strIngredient2);
      readsKey('strIngredient3', dto.strIngredient3);
      readsKey('strIngredient4', dto.strIngredient4);
      readsKey('strIngredient5', dto.strIngredient5);
      readsKey('strIngredient6', dto.strIngredient6);
      readsKey('strIngredient7', dto.strIngredient7);
      readsKey('strIngredient8', dto.strIngredient8);
      readsKey('strIngredient9', dto.strIngredient9);
      readsKey('strIngredient10', dto.strIngredient10);
      readsKey('strIngredient11', dto.strIngredient11);
      readsKey('strIngredient12', dto.strIngredient12);
      readsKey('strIngredient13', dto.strIngredient13);
      readsKey('strIngredient14', dto.strIngredient14);
      readsKey('strIngredient15', dto.strIngredient15);
      readsKey('strMeasure1', dto.strMeasure1);
      readsKey('strMeasure2', dto.strMeasure2);
      readsKey('strMeasure3', dto.strMeasure3);
      readsKey('strMeasure4', dto.strMeasure4);
      readsKey('strMeasure5', dto.strMeasure5);
      readsKey('strMeasure6', dto.strMeasure6);
      readsKey('strMeasure7', dto.strMeasure7);
      readsKey('strMeasure8', dto.strMeasure8);
      readsKey('strMeasure9', dto.strMeasure9);
      readsKey('strMeasure10', dto.strMeasure10);
      readsKey('strMeasure11', dto.strMeasure11);
      readsKey('strMeasure12', dto.strMeasure12);
      readsKey('strMeasure13', dto.strMeasure13);
      readsKey('strMeasure14', dto.strMeasure14);
      readsKey('strMeasure15', dto.strMeasure15);
      readsKey('strImageSource', dto.strImageSource);
      readsKey('strImageAttribution', dto.strImageAttribution);
      readsKey('strCreativeCommonsConfirmed', dto.strCreativeCommonsConfirmed);
      readsKey('dateModified', dto.dateModified);
    });

    test('leaves every optional field null when its key is absent', () {
      final dto = ApiDrink.fromJson(const <String, dynamic>{
        'idDrink': 'idDrink-value',
        'strDrink': 'strDrink-value',
        'strInstructions': 'strInstructions-value',
        'strDrinkThumb': 'strDrinkThumb-value',
      });

      absentKeyIsNull('strDrinkAlternate', dto.strDrinkAlternate);
      absentKeyIsNull('strTags', dto.strTags);
      absentKeyIsNull('strVideo', dto.strVideo);
      absentKeyIsNull('strCategory', dto.strCategory);
      absentKeyIsNull('strIBA', dto.strIba);
      absentKeyIsNull('strAlcoholic', dto.strAlcoholic);
      absentKeyIsNull('strGlass', dto.strGlass);
      absentKeyIsNull('strInstructionsES', dto.strInstructionsEs);
      absentKeyIsNull('strInstructionsDE', dto.strInstructionsDe);
      absentKeyIsNull('strInstructionsFR', dto.strInstructionsFr);
      absentKeyIsNull('strInstructionsIT', dto.strInstructionsIt);
      absentKeyIsNull('strInstructionsZH-HANS', dto.strInstructionsZhHans);
      absentKeyIsNull('strInstructionsZH-HANT', dto.strInstructionsZhHant);
      absentKeyIsNull('strIngredient1', dto.strIngredient1);
      absentKeyIsNull('strIngredient2', dto.strIngredient2);
      absentKeyIsNull('strIngredient3', dto.strIngredient3);
      absentKeyIsNull('strIngredient4', dto.strIngredient4);
      absentKeyIsNull('strIngredient5', dto.strIngredient5);
      absentKeyIsNull('strIngredient6', dto.strIngredient6);
      absentKeyIsNull('strIngredient7', dto.strIngredient7);
      absentKeyIsNull('strIngredient8', dto.strIngredient8);
      absentKeyIsNull('strIngredient9', dto.strIngredient9);
      absentKeyIsNull('strIngredient10', dto.strIngredient10);
      absentKeyIsNull('strIngredient11', dto.strIngredient11);
      absentKeyIsNull('strIngredient12', dto.strIngredient12);
      absentKeyIsNull('strIngredient13', dto.strIngredient13);
      absentKeyIsNull('strIngredient14', dto.strIngredient14);
      absentKeyIsNull('strIngredient15', dto.strIngredient15);
      absentKeyIsNull('strMeasure1', dto.strMeasure1);
      absentKeyIsNull('strMeasure2', dto.strMeasure2);
      absentKeyIsNull('strMeasure3', dto.strMeasure3);
      absentKeyIsNull('strMeasure4', dto.strMeasure4);
      absentKeyIsNull('strMeasure5', dto.strMeasure5);
      absentKeyIsNull('strMeasure6', dto.strMeasure6);
      absentKeyIsNull('strMeasure7', dto.strMeasure7);
      absentKeyIsNull('strMeasure8', dto.strMeasure8);
      absentKeyIsNull('strMeasure9', dto.strMeasure9);
      absentKeyIsNull('strMeasure10', dto.strMeasure10);
      absentKeyIsNull('strMeasure11', dto.strMeasure11);
      absentKeyIsNull('strMeasure12', dto.strMeasure12);
      absentKeyIsNull('strMeasure13', dto.strMeasure13);
      absentKeyIsNull('strMeasure14', dto.strMeasure14);
      absentKeyIsNull('strMeasure15', dto.strMeasure15);
      absentKeyIsNull('strImageSource', dto.strImageSource);
      absentKeyIsNull('strImageAttribution', dto.strImageAttribution);
      absentKeyIsNull(
        'strCreativeCommonsConfirmed',
        dto.strCreativeCommonsConfirmed,
      );
      absentKeyIsNull('dateModified', dto.dateModified);
    });
  });
}
