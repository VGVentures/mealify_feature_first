part of 'routes.dart';

/// The favorites tab: a list at `/favorites`, details at `/favorites/:id`.
const favoritesBranch = TypedStatefulShellBranch<FavoritesBranch>(
  routes: [
    TypedGoRoute<FavoritesListRoute>(
      path: '/favorites',
      routes: [
        TypedGoRoute<FavoriteDetailsRoute>(path: ':id'),
      ],
    ),
  ],
);

/// The navigation branch backing the favorites tab.
class FavoritesBranch extends StatefulShellBranchData {
  /// Construct the favorites branch.
  const FavoritesBranch();
}

/// The favorites list at `/favorites`.
///
/// Uses `NoTransitionPage` because this is a tab root: an animation would play
/// every time the user switches tabs.
class FavoritesListRoute extends GoRouteData with $FavoritesListRoute {
  /// Construct the favorites list route.
  const FavoritesListRoute();

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return NoTransitionPage(
      child: DeferredLoader(
        loader: favorites_list.loadLibrary,
        builder: (context) {
          return favorites_list.FavoritesListModule(
            favoritesRepository: context.read(),
            mealsRepository: context.read(),
            drinksRepository: context.read(),
            // The feature reports that a row was tapped; the app decides that
            // this means navigation. Keeping the decision here is what lets
            // favorites_presentation stay unaware of the routing table.
            onFavoriteTapped: (favoriteId) {
              FavoriteDetailsRoute(id: favoriteId).go(context);
            },
          );
        },
      ),
    );
  }
}

/// A single favorite at `/favorites/:id`.
///
/// The route carries only [id]. go_router supports passing an `$extra` object
/// to skip the loading state on in-app navigation, and this app does not use
/// it: `$extra` is null on a cold-start deep link and after a browser refresh,
/// so the screen has to load from the id regardless.
class FavoriteDetailsRoute extends GoRouteData with $FavoriteDetailsRoute {
  /// Construct the route for the favorite with [id].
  const FavoriteDetailsRoute({required this.id});

  /// The id of the favorite to display.
  final String id;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return DeferredLoader(
      loader: favorite_details.loadLibrary,
      builder: (context) {
        return favorite_details.FavoriteDetailsModule(
          id: id,
          favoritesRepository: context.read(),
          mealsRepository: context.read(),
          drinksRepository: context.read(),
        );
      },
    );
  }
}
