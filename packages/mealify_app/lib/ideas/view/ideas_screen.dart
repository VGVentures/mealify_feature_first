import 'dart:async';

import 'package:drinks_repository/drinks_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mealify_app/app_router/routes.dart';
import 'package:mealify_app/ideas/bloc/ideas_cubit.dart';
import 'package:mealify_app/ideas/bloc/ideas_state.dart';
import 'package:mealify_app/l10n/gen/app_localizations.dart';
import 'package:mealify_app/widgets/error_view.dart';
import 'package:mealify_app/widgets/loading_view.dart';
import 'package:meals_repository/meals_repository.dart';

class IdeasScreen extends StatefulWidget {
  const IdeasScreen({super.key});

  @override
  State<IdeasScreen> createState() => _IdeasScreenState();
}

class _IdeasScreenState extends State<IdeasScreen> {
  @override
  void initState() {
    unawaited(context.read<IdeasCubit>().fetchRandomMeal());

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final state = context.watch<IdeasCubit>().state;

    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context).mealifyAppTitle),
      ),
      body: switch (state) {
        IdeasLoading() => const LoadingView(),
        final IdeasError e => ErrorView(error: e.error),
        final IdeasSuccess s => _SuccessView(
          meal: s.meal,
          drink: s.drink,
          isFavorite: s.isFavorite,
        ),
      },
    );
  }
}

class _SuccessView extends StatelessWidget {
  const _SuccessView({
    required this.meal,
    required this.drink,
    required this.isFavorite,
  });

  final Meal meal;
  final Drink drink;
  final bool isFavorite;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Expanded(
            child: MaterialButton(
              onPressed: () => MealDetailsRoute(id: meal.id).go(context),
              child: Image.network(meal.thumbnail),
            ),
          ),
          Padding(
            padding: const EdgeInsetsGeometry.symmetric(vertical: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MaterialButton(
                  onPressed: () => context.read<IdeasCubit>().fetchRandomMeal(),
                  child: Text(
                    AppLocalizations.of(context).showMeMoreButtonText,
                  ),
                ),
                MaterialButton(
                  onPressed: () => context.read<IdeasCubit>().toggleFavorite(),
                  child: Text(
                    isFavorite
                        ? AppLocalizations.of(
                            context,
                          ).removeFromFavoritesButtonText
                        : AppLocalizations.of(
                            context,
                          ).addToFavoritesButtonText,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: MaterialButton(
              onPressed: () => DrinkDetailsRoute(id: drink.id).go(context),
              child: Image.network(drink.thumbnail),
            ),
          ),
        ],
      ),
    );
  }
}
