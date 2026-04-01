import 'package:drinks_domain/drinks_domain.dart';
import 'package:favorites_domain/favorites_domain.dart';
import 'package:meals_domain/meals_domain.dart';

/// Declares the dependencies an Ideas RIB needs from its parent.
abstract interface class IdeasComponent {
  /// The repository for accessing drinks data.
  IDrinksRepository get drinksRepository;

  /// The repository for accessing meals data.
  IMealsRepository get mealsRepository;

  /// The repository for accessing favorites data.
  IFavoritesRepository get favoritesRepository;
}
