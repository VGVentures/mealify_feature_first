import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ideas/src/ideas_listener.dart';
import 'package:ideas/src/interactor/ideas_interactor.dart';
import 'package:ideas/src/interactor/ideas_state.dart';
import 'package:mealify_design_system/mealify_design_system.dart';
import 'package:mealify_localizations/mealify_localizations.dart';
import 'package:provider/provider.dart';

/// A view that shows ideas for a meal + drink combination.
class IdeasView extends StatefulWidget {
  /// Construct the ideas view.
  const IdeasView({super.key});

  @override
  State<IdeasView> createState() => _IdeasViewState();
}

class _IdeasViewState extends State<IdeasView> {
  @override
  void initState() {
    super.initState();
    unawaited(context.read<IdeasInteractor>().generateNewIdea());
  }

  @override
  Widget build(BuildContext context) {
    final state = context.watch<IdeasInteractor>().state;

    return Scaffold(
      appBar: AppBar(
        title: Text(context.l10n.mealifyAppTitle),
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
    final listener = context.read<IdeasListener>();

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
                      onTap: () => listener.onMealTapped(state.meal),
                    ),
                  ),
                ),
                _LockedWidget(
                  isLocked: state.mealLocked,
                  onPressed: () =>
                      context.read<IdeasInteractor>().toggleMealLocked(),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: MaterialButton(
                  onPressed: () =>
                      context.read<IdeasInteractor>().generateNewIdea(),
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
                  onPressed: () =>
                      context.read<IdeasInteractor>().toggleFavorite(),
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
                      onTap: () => listener.onDrinkTapped(state.drink),
                    ),
                  ),
                ),
                _LockedWidget(
                  isLocked: state.drinkLocked,
                  onPressed: () =>
                      context.read<IdeasInteractor>().toggleDrinkLocked(),
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
