import 'package:cocktaildb_api_client/cocktaildb_api_client.dart';
import 'package:drinks_repository/drinks_repository.dart';
import 'package:favorites_repository/favorites_repository.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:http/http.dart' as http;
import 'package:http_client_factory/http_client_factory.dart';
import 'package:mealdb_api_client/mealdb_api_client.dart';
import 'package:mealify_app/app_router/routes.dart';
import 'package:mealify_app/database/query_executor_factory.dart';
import 'package:mealify_app/l10n/l10n.dart';
import 'package:mealify_database/mealify_database.dart';
import 'package:meals_repository/meals_repository.dart';
import 'package:provider/provider.dart';

class App extends StatefulWidget {
  const App({required this.navigatorKey, super.key});

  final GlobalKey<NavigatorState> navigatorKey;

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  final MealifyDatabase mealifyDatabase = MealifyDatabase(
    queryExecutor: queryExecutorFactory(),
  );
  late final GoRouter _router;

  @override
  void initState() {
    super.initState();
    _router = GoRouter(
      navigatorKey: widget.navigatorKey,
      initialLocation: const IdeasRoute().location,
      routes: $appRoutes,
    );
  }

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<http.Client>(create: (context) => httpClientFactory()),
        Provider<DrinksDao>(create: (context) => DrinksDao(mealifyDatabase)),
        Provider<MealsDao>(create: (context) => MealsDao(mealifyDatabase)),
        Provider<FavoritesDao>(
          create: (context) => FavoritesDao(mealifyDatabase),
        ),
        Provider<MealsRepository>(
          create: (context) => MealsRepository(
            mealsDao: context.read<MealsDao>(),
            mealDbApiClient: MealDbApiClient(
              httpClient: context.read<http.Client>(),
            ),
          ),
        ),
        Provider<DrinksRepository>(
          create: (context) => DrinksRepository(
            drinksDao: context.read<DrinksDao>(),
            cocktailDbApiClient: CocktailDbApiClient(
              httpClient: context.read<http.Client>(),
            ),
          ),
        ),
        Provider<FavoritesRepository>(
          create: (context) => FavoritesRepository(
            favoritesDao: context.read<FavoritesDao>(),
          ),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: _router,
        theme: ThemeData(),
        darkTheme: ThemeData.dark(),
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
      ),
    );
  }
}
