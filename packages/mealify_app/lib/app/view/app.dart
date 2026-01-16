import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:http/http.dart' as http;
import 'package:http_client_factory/http_client_factory.dart';
import 'package:mealify_app/app_router/routes.dart';
import 'package:mealify_app/database/query_executor_factory.dart';
import 'package:mealify_app/l10n/l10n.dart';
import 'package:mealify_database/mealify_database.dart';
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
      ],
      child: MaterialApp.router(
        routerConfig: GoRouter(
          navigatorKey: widget.navigatorKey,
          initialLocation: const IdeasRoute().location,
          routes: $appRoutes,
        ),
        theme: ThemeData(),
        darkTheme: ThemeData.dark(),
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
      ),
    );
  }
}
