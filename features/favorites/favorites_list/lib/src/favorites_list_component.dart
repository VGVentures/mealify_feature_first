import 'package:favorites_domain/favorites_domain.dart';
import 'package:favorites_list_item/favorites_list_item_component.dart';

/// Declares the dependencies a FavoritesList RIB needs from its parent.
///
/// Implements [FavoritesListItemComponent] so it can be passed directly as the
/// child's Component — providing compile-time safety for the dependency
/// contract between parent and child.
abstract interface class FavoritesListComponent
    implements FavoritesListItemComponent {
  /// The repository for accessing favorites data.
  @override
  IFavoritesRepository get favoritesRepository;
}
