// Asserts every field against the exact wire key it comes from. Parsing is
// generated, so only a test at this granularity notices when a generated key
// stops matching what TheMealDB actually sends.
import 'package:meals_data/src/data_sources/mealdb_api_client/dtos/api_meal.dart';
import 'package:test/test.dart';

/// Fails unless [value] came from `json['key']`.
void readsKey(String key, String? value) =>
    expect(value, '$key-value', reason: 'must be read from $key');

/// Fails unless an absent `json['key']` left [value] null.
void absentKeyIsNull(String key, String? value) =>
    expect(value, isNull, reason: 'must be null when $key is absent');

void main() {
  group('ApiMeal.fromJson', () {
    test('reads every field from its wire key', () {
      final dto = ApiMeal.fromJson(const <String, dynamic>{
        'idMeal': 'idMeal-value',
        'strMeal': 'strMeal-value',
        'strMealAlternate': 'strMealAlternate-value',
        'strCategory': 'strCategory-value',
        'strArea': 'strArea-value',
        'strInstructions': 'strInstructions-value',
        'strMealThumb': 'strMealThumb-value',
        'strTags': 'strTags-value',
        'strYoutube': 'strYoutube-value',
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
        'strIngredient16': 'strIngredient16-value',
        'strIngredient17': 'strIngredient17-value',
        'strIngredient18': 'strIngredient18-value',
        'strIngredient19': 'strIngredient19-value',
        'strIngredient20': 'strIngredient20-value',
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
        'strMeasure16': 'strMeasure16-value',
        'strMeasure17': 'strMeasure17-value',
        'strMeasure18': 'strMeasure18-value',
        'strMeasure19': 'strMeasure19-value',
        'strMeasure20': 'strMeasure20-value',
        'strSource': 'strSource-value',
        'strImageSource': 'strImageSource-value',
        'strCreativeCommonsConfirmed': 'strCreativeCommonsConfirmed-value',
        'dateModified': 'dateModified-value',
      });

      readsKey('idMeal', dto.idMeal);
      readsKey('strMeal', dto.strMeal);
      readsKey('strMealAlternate', dto.strMealAlternate);
      readsKey('strCategory', dto.strCategory);
      readsKey('strArea', dto.strArea);
      readsKey('strInstructions', dto.strInstructions);
      readsKey('strMealThumb', dto.strMealThumb);
      readsKey('strTags', dto.strTags);
      readsKey('strYoutube', dto.strYoutube);
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
      readsKey('strIngredient16', dto.strIngredient16);
      readsKey('strIngredient17', dto.strIngredient17);
      readsKey('strIngredient18', dto.strIngredient18);
      readsKey('strIngredient19', dto.strIngredient19);
      readsKey('strIngredient20', dto.strIngredient20);
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
      readsKey('strMeasure16', dto.strMeasure16);
      readsKey('strMeasure17', dto.strMeasure17);
      readsKey('strMeasure18', dto.strMeasure18);
      readsKey('strMeasure19', dto.strMeasure19);
      readsKey('strMeasure20', dto.strMeasure20);
      readsKey('strSource', dto.strSource);
      readsKey('strImageSource', dto.strImageSource);
      readsKey('strCreativeCommonsConfirmed', dto.strCreativeCommonsConfirmed);
      readsKey('dateModified', dto.dateModified);
    });

    test('leaves every optional field null when its key is absent', () {
      final dto = ApiMeal.fromJson(const <String, dynamic>{
        'idMeal': 'idMeal-value',
        'strMeal': 'strMeal-value',
        'strInstructions': 'strInstructions-value',
        'strMealThumb': 'strMealThumb-value',
      });

      absentKeyIsNull('strMealAlternate', dto.strMealAlternate);
      absentKeyIsNull('strCategory', dto.strCategory);
      absentKeyIsNull('strArea', dto.strArea);
      absentKeyIsNull('strTags', dto.strTags);
      absentKeyIsNull('strYoutube', dto.strYoutube);
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
      absentKeyIsNull('strIngredient16', dto.strIngredient16);
      absentKeyIsNull('strIngredient17', dto.strIngredient17);
      absentKeyIsNull('strIngredient18', dto.strIngredient18);
      absentKeyIsNull('strIngredient19', dto.strIngredient19);
      absentKeyIsNull('strIngredient20', dto.strIngredient20);
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
      absentKeyIsNull('strMeasure16', dto.strMeasure16);
      absentKeyIsNull('strMeasure17', dto.strMeasure17);
      absentKeyIsNull('strMeasure18', dto.strMeasure18);
      absentKeyIsNull('strMeasure19', dto.strMeasure19);
      absentKeyIsNull('strMeasure20', dto.strMeasure20);
      absentKeyIsNull('strSource', dto.strSource);
      absentKeyIsNull('strImageSource', dto.strImageSource);
      absentKeyIsNull(
        'strCreativeCommonsConfirmed',
        dto.strCreativeCommonsConfirmed,
      );
      absentKeyIsNull('dateModified', dto.dateModified);
    });
  });
}
