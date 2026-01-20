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
    super.initState();
    unawaited(context.read<IdeasCubit>().fetchRandomMeal());
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
        IdeasError(:final error) => ErrorView(error: error),
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
            child: Material(
              color: Colors.transparent,
              child: Ink.image(
                image: NetworkImage(meal.thumbnail),
                fit: BoxFit.cover,
                child: InkWell(
                  onTap: () => MealDetailsRoute(id: meal.id).go(context),
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: MaterialButton(
                  onPressed: () => context.read<IdeasCubit>().fetchRandomMeal(),
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Text(
                      AppLocalizations.of(context).showMeMoreButtonText,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: MaterialButton(
                  onPressed: () => context.read<IdeasCubit>().toggleFavorite(),
                  child: Padding(
                    padding: const EdgeInsets.all(20),
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
                ),
              ),
            ],
          ),
          Expanded(
            child: Material(
              color: Colors.transparent,
              child: Ink.image(
                image: NetworkImage(drink.thumbnail),
                fit: BoxFit.cover,
                child: InkWell(
                  onTap: () => DrinkDetailsRoute(id: drink.id).go(context),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
