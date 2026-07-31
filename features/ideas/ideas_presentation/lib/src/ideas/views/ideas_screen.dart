import 'dart:async';

import 'package:drinks_domain/drinks_domain.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ideas_presentation/src/ideas/bloc/ideas_cubit.dart';
import 'package:ideas_presentation/src/ideas/bloc/ideas_state.dart';
import 'package:mealify_design_system/mealify_design_system.dart';
import 'package:mealify_localizations/mealify_localizations.dart';
import 'package:meals_domain/meals_domain.dart';

/// A screen that shows ideas for a meal + drink combination
class IdeasScreen extends StatefulWidget {
  /// Construct the ideas screen
  const IdeasScreen({
    required this.onDrinkTapped,
    required this.onMealTapped,
    super.key,
  });

  /// The callback executed when a Drink is tapped. Used for routing.
  final ValueChanged<Drink> onDrinkTapped;

  /// The callback executed when a Meal is tapped. Used for routing.
  final ValueChanged<Meal> onMealTapped;

  @override
  State<IdeasScreen> createState() => _IdeasScreenState();
}

class _IdeasScreenState extends State<IdeasScreen> {
  @override
  void initState() {
    super.initState();
    unawaited(context.read<IdeasCubit>().generateNewIdea());
  }

  @override
  Widget build(BuildContext context) {
    final state = context.watch<IdeasCubit>().state;

    return Scaffold(
      appBar: AppBar(
        title: Text(context.l10n.mealifyAppTitle),
      ),
      body: AnimatedSwitcher(
        duration: const Duration(milliseconds: 150),
        child: switch (state) {
          IdeasLoading() => const LoadingView(),
          IdeasError(:final error) => ErrorView(error: error),
          final IdeasSuccess state => _SuccessView(
            state: state,
            onMealTapped: widget.onMealTapped,
            onDrinkTapped: widget.onDrinkTapped,
          ),
        },
      ),
    );
  }
}

class _SuccessView extends StatelessWidget {
  const _SuccessView({
    required this.onDrinkTapped,
    required this.onMealTapped,
    required this.state,
  });

  final IdeasSuccess state;
  final ValueChanged<Meal> onMealTapped;
  final ValueChanged<Drink> onDrinkTapped;

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
                      onTap: () => onMealTapped(state.meal),
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
                  onPressed: () => context.read<IdeasCubit>().generateNewIdea(),
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Text(
                      context.l10n.showMeMoreButtonText,
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
                          ? context.l10n.removeFromFavoritesButtonText
                          : context.l10n.addToFavoritesButtonText,
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
                      onTap: () => onDrinkTapped(state.drink),
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
