part of 'routes.dart';

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

class FavoritesBranch extends StatefulShellBranchData {
  const FavoritesBranch();
}

class FavoritesListRoute extends GoRouteData with $FavoritesListRoute {
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
            onFavoriteTapped: (favoriteId) {
              FavoriteDetailsRoute(id: favoriteId).go(context);
            },
          );
        },
      ),
    );
  }
}

class FavoriteDetailsRoute extends GoRouteData with $FavoriteDetailsRoute {
  const FavoriteDetailsRoute({required this.id});

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
