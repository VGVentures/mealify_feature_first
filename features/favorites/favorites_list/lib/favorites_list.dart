/// Favorites list RIB — displays the user's list of favorites.
library;

// Re-export the child's Listener so routes only need one deferred import.
export 'package:favorites_list_item/favorites_list_item.dart'
    show FavoritesListItemListener;

export 'src/favorites_list_component.dart';
export 'src/interactor/favorites_list_interactor.dart';
export 'src/interactor/favorites_list_state.dart';
export 'src/view/favorites_list_builder.dart';
export 'src/view/favorites_list_view.dart';
