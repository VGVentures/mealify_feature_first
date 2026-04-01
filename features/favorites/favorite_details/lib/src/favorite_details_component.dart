import 'package:favorites_domain/favorites_domain.dart';

/// Declares the dependencies a FavoriteDetails RIB needs from its parent.
abstract interface class FavoriteDetailsComponent {
  /// The repository for accessing favorites data.
  IFavoritesRepository get favoritesRepository;

  /// The query for getting a favorite with its associated meal and drink.
  GetFavoriteQuery get getFavoriteQuery;
}
