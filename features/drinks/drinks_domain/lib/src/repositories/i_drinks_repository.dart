import 'package:drinks_domain/src/models/drink.dart';

/// The Data Source for Drinks
abstract interface class IDrinksRepository {
  /// Get a [Drink] by id.
  Future<Drink> getDrinkById(String id);

  /// Get a random drink
  Future<Drink> getRandomDrink();
}
