import 'package:drinks_domain/drinks_domain.dart';
import 'package:ingredients_domain/src/models/ingredient.dart';

/// Extensions for converting Drinks -> Ingredients
extension DrinkIngredients on Drink {
  /// Converts the ingredients and measures of a Drink into a list of
  /// [Ingredient]s.
  List<Ingredient> get ingredients {
    final allPossible = [
      (ingredient1, measure1),
      (ingredient2, measure2),
      (ingredient3, measure3),
      (ingredient4, measure4),
      (ingredient5, measure5),
      (ingredient6, measure6),
      (ingredient7, measure7),
      (ingredient8, measure8),
      (ingredient9, measure9),
      (ingredient10, measure10),
      (ingredient11, measure11),
      (ingredient12, measure12),
      (ingredient13, measure13),
      (ingredient14, measure14),
      (ingredient15, measure15),
    ];

    return [
      for (final entry in allPossible)
        if (entry.$1 != null &&
            entry.$1!.trim().isNotEmpty &&
            entry.$2 != null &&
            entry.$2!.trim().isNotEmpty)
          (name: entry.$1!, measurement: entry.$2),
    ];
  }
}
