import 'package:drinks_data/drinks_data.dart';
import 'package:drinks_domain/drinks_domain.dart';
import 'package:favorites_data/favorites_data.dart';
import 'package:favorites_domain/favorites_domain.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:http/http.dart' as http;
import 'package:http_client_factory/http_client_factory.dart';
import 'package:ideas_presentation/ideas_routes.dart';
import 'package:mealify_app/app_router/routes.dart';
import 'package:mealify_localizations/mealify_localizations.dart';
import 'package:meals_data/meals_data.dart';
import 'package:meals_domain/meals_domain.dart';
import 'package:provider/provider.dart';
import 'package:query_executor_factory/query_executor_factory.dart';

class MealifyApp extends StatefulWidget {
  const MealifyApp({required this.navigatorKey, super.key});

  final GlobalKey<NavigatorState> navigatorKey;

  @override
  State<MealifyApp> createState() => _MealifyAppState();
}

class _MealifyAppState extends State<MealifyApp> {
  late final GoRouter _router;

  @override
  void initState() {
    super.initState();
    _router = GoRouter(
      navigatorKey: widget.navigatorKey,
      initialLocation: const IdeasRoute().location,
      routes: appRoutes,
    );
  }

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<http.Client>(create: (context) => httpClientFactory()),
        Provider<IDrinksRepository>(
          create: (context) => DrinksRepository(
            drinksDb: DrinksDatabase(
              queryExecutor: queryExecutorFactory('mealify_drinks_database'),
            ),
            cocktailDbApiClient: CocktailDbApiClient(
              httpClient: context.read(),
            ),
          ),
        ),
        Provider<IFavoritesRepository>(
          create: (context) => FavoritesRepository(
            favoritesDb: FavoritesDatabase(
              queryExecutor: queryExecutorFactory('mealify_favorites_database'),
            ),
          ),
        ),
        Provider<IMealsRepository>(
          create: (context) => MealsRepository(
            mealsDb: MealsDatabase(
              queryExecutor: queryExecutorFactory('mealify_meals_database'),
            ),
            mealDbApiClient: MealDbApiClient(
              httpClient: context.read<http.Client>(),
            ),
          ),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: _router,
        theme: ThemeData(),
        darkTheme: ThemeData.dark(),
        localizationsDelegates: MealifyLocalizations.localizationsDelegates,
        supportedLocales: MealifyLocalizations.supportedLocales,
      ),
    );
  }
}
