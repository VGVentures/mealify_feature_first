import 'package:favorites_domain/favorites_domain.dart';

/// Declares the dependencies a Favorite data provider RIB needs from its
/// parent.
abstract interface class FavoriteComponent {
  /// The repository for accessing favorites data.
  IFavoritesRepository get favoritesRepository;
}
