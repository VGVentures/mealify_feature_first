import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mealify_app/app_router/routes.dart';
import 'package:mealify_app/ideas/bloc/ideas_cubit.dart';
import 'package:mealify_app/ideas/bloc/ideas_state.dart';
import 'package:mealify_app/l10n/l10n.dart';
import 'package:mealify_app/widgets/error_view.dart';
import 'package:mealify_app/widgets/loading_view.dart';

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
      body: AnimatedSwitcher(
        duration: const Duration(milliseconds: 150),
        child: switch (state) {
          IdeasLoading() => const LoadingView(),
          IdeasError(:final error) => ErrorView(error: error),
          final IdeasSuccess state => _SuccessView(state: state),
        },
      ),
    );
  }
}

class _SuccessView extends StatelessWidget {
  const _SuccessView({
    required this.state,
  });

  final IdeasSuccess state;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Expanded(
            child: Stack(
              children: [
                Material(
                  color: Colors.transparent,
                  child: Ink.image(
                    image: NetworkImage(state.meal.thumbnail),
                    fit: BoxFit.cover,
                    child: InkWell(
                      onTap: () =>
                          MealDetailsRoute(id: state.meal.id).go(context),
                    ),
                  ),
                ),
                _LockedWidget(
                  isLocked: state.mealLocked,
                  onPressed: () =>
                      context.read<IdeasCubit>().toggleMealLocked(),
                ),
              ],
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
                      state.isFavorite
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
            child: Stack(
              children: [
                Material(
                  color: Colors.transparent,
                  child: Ink.image(
                    image: NetworkImage(state.drink.thumbnail),
                    fit: BoxFit.cover,
                    child: InkWell(
                      onTap: () {
                        DrinkDetailsRoute(id: state.drink.id).go(context);
                      },
                    ),
                  ),
                ),
                _LockedWidget(
                  isLocked: state.drinkLocked,
                  onPressed: () =>
                      context.read<IdeasCubit>().toggleDrinkLocked(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _LockedWidget extends StatelessWidget {
  const _LockedWidget({
    required this.isLocked,
    required this.onPressed,
  });

  final VoidCallback onPressed;
  final bool isLocked;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomRight,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: IconButton.filledTonal(
          style: IconButton.styleFrom(
            backgroundColor: Theme.of(
              context,
            ).colorScheme.surfaceContainerHighest.withAlpha(200),
          ),
          onPressed: onPressed,
          icon: Icon(
            isLocked ? Icons.lock_outline : Icons.lock_open,
          ),
          iconSize: 32,
        ),
      ),
    );
  }
}
