import 'package:drift/drift.dart';
import 'package:mealify_database/mealify_database.dart';

part 'drinks_dao.g.dart';

/// A class that interacts with Drinks in the [MealifyDatabase]
@DriftAccessor(include: {'drinks.drift'})
class DrinksDao extends DatabaseAccessor<MealifyDatabase>
    with _$DrinksDaoMixin {
  /// Construct an object that interacts with Drinks in the [MealifyDatabase]
  DrinksDao(super.attachedDatabase);

  /// Get a single drink from the database by id
  Future<Drink?> getDrink(String id) => findDrinkById(id).getSingleOrNull();

  /// Get a list of drinks from the database
  Future<List<Drink>> getDrinks(List<String> ids) => findDrinksByIds(ids).get();

  /// Save a drink to the database
  Future<void> saveDrink({
    required String idDrink,
    required String strDrink,
    required String strInstructions,
    required String strDrinkThumb,
    String? strDrinkAlternate,
    String? strTags,
    String? strVideo,
    String? strCategory,
    String? strIba,
    String? strAlcoholic,
    String? strGlass,
    String? strInstructionsEs,
    String? strInstructionsDe,
    String? strInstructionsFr,
    String? strInstructionsIt,
    String? strInstructionsZhHans,
    String? strInstructionsZhHant,
    String? strIngredient1,
    String? strIngredient2,
    String? strIngredient3,
    String? strIngredient4,
    String? strIngredient5,
    String? strIngredient6,
    String? strIngredient7,
    String? strIngredient8,
    String? strIngredient9,
    String? strIngredient10,
    String? strIngredient11,
    String? strIngredient12,
    String? strIngredient13,
    String? strIngredient14,
    String? strIngredient15,
    String? strMeasure1,
    String? strMeasure2,
    String? strMeasure3,
    String? strMeasure4,
    String? strMeasure5,
    String? strMeasure6,
    String? strMeasure7,
    String? strMeasure8,
    String? strMeasure9,
    String? strMeasure10,
    String? strMeasure11,
    String? strMeasure12,
    String? strMeasure13,
    String? strMeasure14,
    String? strMeasure15,
    String? strImageSource,
    String? strImageAttribution,
    String? strCreativeCommonsConfirmed,
    String? dateModified,
  }) {
    return into(drinks).insertOnConflictUpdate(
      DrinksCompanion.insert(
        idDrink: idDrink,
        strDrink: strDrink,
        strDrinkAlternate: Value.absentIfNull(strDrinkAlternate),
        strTags: Value.absentIfNull(strTags),
        strVideo: Value.absentIfNull(strVideo),
        strCategory: Value.absentIfNull(strCategory),
        strIba: Value.absentIfNull(strIba),
        strAlcoholic: Value.absentIfNull(strAlcoholic),
        strGlass: Value.absentIfNull(strGlass),
        strInstructions: strInstructions,
        strInstructionsEs: Value.absentIfNull(strInstructionsEs),
        strInstructionsDe: Value.absentIfNull(strInstructionsDe),
        strInstructionsFr: Value.absentIfNull(strInstructionsFr),
        strInstructionsIt: Value.absentIfNull(strInstructionsIt),
        strInstructionsZhHans: Value.absentIfNull(strInstructionsZhHans),
        strInstructionsZhHant: Value.absentIfNull(strInstructionsZhHant),
        strDrinkThumb: strDrinkThumb,
        strIngredient1: Value.absentIfNull(strIngredient1),
        strIngredient2: Value.absentIfNull(strIngredient2),
        strIngredient3: Value.absentIfNull(strIngredient3),
        strIngredient4: Value.absentIfNull(strIngredient4),
        strIngredient5: Value.absentIfNull(strIngredient5),
        strIngredient6: Value.absentIfNull(strIngredient6),
        strIngredient7: Value.absentIfNull(strIngredient7),
        strIngredient8: Value.absentIfNull(strIngredient8),
        strIngredient9: Value.absentIfNull(strIngredient9),
        strIngredient10: Value.absentIfNull(strIngredient10),
        strIngredient11: Value.absentIfNull(strIngredient11),
        strIngredient12: Value.absentIfNull(strIngredient12),
        strIngredient13: Value.absentIfNull(strIngredient13),
        strIngredient14: Value.absentIfNull(strIngredient14),
        strIngredient15: Value.absentIfNull(strIngredient15),
        strMeasure1: Value.absentIfNull(strMeasure1),
        strMeasure2: Value.absentIfNull(strMeasure2),
        strMeasure3: Value.absentIfNull(strMeasure3),
        strMeasure4: Value.absentIfNull(strMeasure4),
        strMeasure5: Value.absentIfNull(strMeasure5),
        strMeasure6: Value.absentIfNull(strMeasure6),
        strMeasure7: Value.absentIfNull(strMeasure7),
        strMeasure8: Value.absentIfNull(strMeasure8),
        strMeasure9: Value.absentIfNull(strMeasure9),
        strMeasure10: Value.absentIfNull(strMeasure10),
        strMeasure11: Value.absentIfNull(strMeasure11),
        strMeasure12: Value.absentIfNull(strMeasure12),
        strMeasure13: Value.absentIfNull(strMeasure13),
        strMeasure14: Value.absentIfNull(strMeasure14),
        strMeasure15: Value.absentIfNull(strMeasure15),
        strImageSource: Value.absentIfNull(strImageSource),
        strImageAttribution: Value.absentIfNull(strImageAttribution),
        strCreativeCommonsConfirmed: Value.absentIfNull(
          strCreativeCommonsConfirmed,
        ),
        dateModified: Value.absentIfNull(dateModified),
      ),
    );
  }
}
