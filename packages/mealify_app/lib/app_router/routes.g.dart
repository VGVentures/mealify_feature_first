// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'routes.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [$appShellRouteData];

RouteBase get $appShellRouteData => StatefulShellRouteData.$route(
  factory: $AppShellRouteDataExtension._fromState,
  branches: [
    StatefulShellBranchData.$branch(
      routes: [
        GoRouteData.$route(
          path: '/ideas',
          factory: $IdeasRoute._fromState,
          routes: [
            GoRouteData.$route(
              path: 'meal/:id',
              factory: $MealDetailsRoute._fromState,
            ),
            GoRouteData.$route(
              path: 'drink/:id',
              factory: $DrinkDetailsRoute._fromState,
            ),
          ],
        ),
      ],
    ),
    StatefulShellBranchData.$branch(
      routes: [
        GoRouteData.$route(
          path: '/favorites',
          factory: $FavoritesRoute._fromState,
          routes: [
            GoRouteData.$route(
              path: ':id',
              factory: $FavoriteDetailsRoute._fromState,
            ),
          ],
        ),
      ],
    ),
  ],
);

extension $AppShellRouteDataExtension on AppShellRouteData {
  static AppShellRouteData _fromState(GoRouterState state) =>
      const AppShellRouteData();
}

mixin $IdeasRoute on GoRouteData {
  static IdeasRoute _fromState(GoRouterState state) => const IdeasRoute();

  @override
  String get location => GoRouteData.$location('/ideas');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

mixin $MealDetailsRoute on GoRouteData {
  static MealDetailsRoute _fromState(GoRouterState state) =>
      MealDetailsRoute(id: state.pathParameters['id']!);

  MealDetailsRoute get _self => this as MealDetailsRoute;

  @override
  String get location =>
      GoRouteData.$location('/ideas/meal/${Uri.encodeComponent(_self.id)}');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

mixin $DrinkDetailsRoute on GoRouteData {
  static DrinkDetailsRoute _fromState(GoRouterState state) =>
      DrinkDetailsRoute(id: state.pathParameters['id']!);

  DrinkDetailsRoute get _self => this as DrinkDetailsRoute;

  @override
  String get location =>
      GoRouteData.$location('/ideas/drink/${Uri.encodeComponent(_self.id)}');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

mixin $FavoritesRoute on GoRouteData {
  static FavoritesRoute _fromState(GoRouterState state) =>
      const FavoritesRoute();

  @override
  String get location => GoRouteData.$location('/favorites');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

mixin $FavoriteDetailsRoute on GoRouteData {
  static FavoriteDetailsRoute _fromState(GoRouterState state) =>
      FavoriteDetailsRoute(id: state.pathParameters['id']!);

  FavoriteDetailsRoute get _self => this as FavoriteDetailsRoute;

  @override
  String get location =>
      GoRouteData.$location('/favorites/${Uri.encodeComponent(_self.id)}');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}
