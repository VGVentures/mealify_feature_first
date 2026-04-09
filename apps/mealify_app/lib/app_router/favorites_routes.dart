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
          final appComponent = context.read<AppComponent>();
          return favorites_list.FavoritesListBuilder(
            component: appComponent,
            listener: favorites_list.FavoritesListItemListener(
              onFavoriteTapped: (id) {
                FavoriteDetailsRoute(id: id).go(context);
              },
              onFavoriteRemoved: (id) {
                unawaited(
                  appComponent.favoritesRepository.removeFavorite(id),
                );
              },
            ),
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
        return favorite_details.FavoriteDetailsBuilder(
          component: context.read<AppComponent>(),
          id: id,
        );
      },
    );
  }
}
