import 'package:drinks_domain/drinks_domain.dart';

/// Declares the dependencies a Drink data provider RIB needs from its parent.
abstract interface class DrinkComponent {
  /// The repository for accessing drink data.
  IDrinksRepository get drinksRepository;
}
