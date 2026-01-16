import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:http/http.dart' as http;
import 'package:http_client_factory/http_client_factory.dart';
import 'package:mealify_app/app_router/routes.dart';
import 'package:mealify_app/l10n/l10n.dart';
import 'package:provider/provider.dart';

class App extends StatelessWidget {
  const App({required this.navigatorKey, super.key});

  final GlobalKey<NavigatorState> navigatorKey;

  @override
  Widget build(BuildContext context) {
    return Provider<http.Client>(
      create: (context) => httpClientFactory(),
      child: MaterialApp.router(
        routerConfig: GoRouter(
          navigatorKey: navigatorKey,
          initialLocation: const IdeasRoute().location,
          routes: $appRoutes,
        ),
        theme: ThemeData(
          appBarTheme: AppBarTheme(
            backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          ),
          useMaterial3: true,
        ),
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
      ),
    );
  }
}
