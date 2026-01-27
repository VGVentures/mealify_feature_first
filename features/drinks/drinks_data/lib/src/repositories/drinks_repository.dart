import 'package:drinks_data/src/data_sources/cocktaildb_api_client/api_drink.dart';
import 'package:drinks_data/src/data_sources/cocktaildb_api_client/cocktaildb_api_client.dart';
import 'package:drinks_data/src/data_sources/drinks_database/drinks_database.dart';
import 'package:drinks_data/src/repositories/converters/api_to_domain_drink_converter.dart';
import 'package:drinks_data/src/repositories/converters/db_to_domain_drink_converter.dart';
import 'package:drinks_domain/drinks_domain.dart';

/// A class that coordinates meal objects from the remote MealDb Api and the
/// local MealifyDatabase.
class DrinksRepository implements IDrinksRepository {
  /// Construct an object that coordinates local and remote data sources for
  /// meals
  const DrinksRepository({
    required DrinksDatabase drinksDb,
    required CocktailDbApiClient cocktailDbApiClient,
    ApiToDomainDrinkConverter apiToDomainDrinkConverter =
        const ApiToDomainDrinkConverter(),
    DbToDomainDrinkConverter dbToDomainDrinkConverter =
        const DbToDomainDrinkConverter(),
  }) : _drinksDb = drinksDb,
       _cocktailDbApiClient = cocktailDbApiClient,
       _apiToDomainDrinkConverter = apiToDomainDrinkConverter,
       _dbToDomainDrinkConverter = dbToDomainDrinkConverter;

  final DrinksDatabase _drinksDb;
  final CocktailDbApiClient _cocktailDbApiClient;
  final ApiToDomainDrinkConverter _apiToDomainDrinkConverter;
  final DbToDomainDrinkConverter _dbToDomainDrinkConverter;

  /// Gets a meal by id. First tries the local database, falls back to the
  /// internet if one doesn't exist.
  @override
  Future<Drink> getDrinkById(String id) async {
    final dbDrink = await _drinksDb.getDrink(id);

    if (dbDrink != null) {
      return _dbToDomainDrinkConverter.convert(dbDrink);
    }

    final apiMeal = await _cocktailDbApiClient.fetchDrinkById(id);
    await _saveDrinkToDatabase(apiMeal);
    return _apiToDomainDrinkConverter.convert(apiMeal);
  }

  /// Gets a random meal from the internet and stores it in the database.
  @override
  Future<Drink> getRandomDrink() async {
    final apiMeal = await _cocktailDbApiClient.fetchRandomDrink();
    await _saveDrinkToDatabase(apiMeal);
    return _apiToDomainDrinkConverter.convert(apiMeal);
  }

  Future<void> _saveDrinkToDatabase(ApiDrink apiDrink) {
    return _drinksDb.saveDrink(
      idDrink: apiDrink.idDrink,
      strDrink: apiDrink.strDrink,
      strDrinkAlternate: apiDrink.strDrinkAlternate,
      strTags: apiDrink.strTags,
      strVideo: apiDrink.strVideo,
      strCategory: apiDrink.strCategory,
      strIba: apiDrink.strIba,
      strAlcoholic: apiDrink.strAlcoholic,
      strGlass: apiDrink.strGlass,
      strInstructions: apiDrink.strInstructions,
      strInstructionsEs: apiDrink.strInstructionsEs,
      strInstructionsDe: apiDrink.strInstructionsDe,
      strInstructionsFr: apiDrink.strInstructionsFr,
      strInstructionsIt: apiDrink.strInstructionsIt,
      strInstructionsZhHans: apiDrink.strInstructionsZhHans,
      strInstructionsZhHant: apiDrink.strInstructionsZhHant,
      strDrinkThumb: apiDrink.strDrinkThumb,
      strIngredient1: apiDrink.strIngredient1,
      strIngredient2: apiDrink.strIngredient2,
      strIngredient3: apiDrink.strIngredient3,
      strIngredient4: apiDrink.strIngredient4,
      strIngredient5: apiDrink.strIngredient5,
      strIngredient6: apiDrink.strIngredient6,
      strIngredient7: apiDrink.strIngredient7,
      strIngredient8: apiDrink.strIngredient8,
      strIngredient9: apiDrink.strIngredient9,
      strIngredient10: apiDrink.strIngredient10,
      strIngredient11: apiDrink.strIngredient11,
      strIngredient12: apiDrink.strIngredient12,
      strIngredient13: apiDrink.strIngredient13,
      strIngredient14: apiDrink.strIngredient14,
      strIngredient15: apiDrink.strIngredient15,
      strMeasure1: apiDrink.strMeasure1,
      strMeasure2: apiDrink.strMeasure2,
      strMeasure3: apiDrink.strMeasure3,
      strMeasure4: apiDrink.strMeasure4,
      strMeasure5: apiDrink.strMeasure5,
      strMeasure6: apiDrink.strMeasure6,
      strMeasure7: apiDrink.strMeasure7,
      strMeasure8: apiDrink.strMeasure8,
      strMeasure9: apiDrink.strMeasure9,
      strMeasure10: apiDrink.strMeasure10,
      strMeasure11: apiDrink.strMeasure11,
      strMeasure12: apiDrink.strMeasure12,
      strMeasure13: apiDrink.strMeasure13,
      strMeasure14: apiDrink.strMeasure14,
      strMeasure15: apiDrink.strMeasure15,
      strImageSource: apiDrink.strImageSource,
      strImageAttribution: apiDrink.strImageAttribution,
      strCreativeCommonsConfirmed: apiDrink.strCreativeCommonsConfirmed,
      dateModified: apiDrink.dateModified,
    );
  }
}
