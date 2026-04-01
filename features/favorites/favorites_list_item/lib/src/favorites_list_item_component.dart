import 'package:favorites_domain/favorites_domain.dart';

/// Declares the dependencies a FavoritesListItem RIB needs from its parent.
///
/// The parent's Component class implements this interface, providing
/// compile-time safety for dependency contracts.
abstract interface class FavoritesListItemComponent {
  /// The repository for accessing favorites data.
  IFavoritesRepository get favoritesRepository;

  /// The query for getting a favorite with its associated meal and drink.
  GetFavoriteQuery get getFavoriteQuery;
}
