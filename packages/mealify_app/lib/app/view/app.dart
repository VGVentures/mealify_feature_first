import 'package:cocktaildb_api_client/cocktaildb_api_client.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;
import 'package:http_client_factory/http_client_factory.dart';
import 'package:mealdb_api_client/mealdb_api_client.dart';
import 'package:mealify_app/l10n/l10n.dart';
import 'package:mealify_app/random_meal/bloc/random_meal_cubit.dart';
import 'package:mealify_app/random_meal/view/random_meal_page.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  final http.Client _httpClient = httpClientFactory();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        ),
        useMaterial3: true,
      ),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      home: BlocProvider<RandomMealCubit>(
        child: const RandomMealPage(),
        create: (context) => RandomMealCubit(
          cocktailDbApiClient: CocktailDbApiClient(httpClient: _httpClient),
          mealDbApiClient: MealDbApiClient(httpClient: _httpClient),
        ),
      ),
    );
  }
}
