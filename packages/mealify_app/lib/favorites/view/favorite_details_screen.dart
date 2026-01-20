import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mealify_app/favorites/bloc/favorites_details_cubit.dart';
import 'package:mealify_app/favorites/bloc/favorites_details_state.dart';
import 'package:mealify_app/favorites/bloc/populated_favorite.dart';
import 'package:mealify_app/l10n/gen/app_localizations.dart';
import 'package:mealify_app/widgets/error_view.dart';
import 'package:mealify_app/widgets/loading_view.dart';

class FavoriteDetailsScreen extends StatefulWidget {
  const FavoriteDetailsScreen({required this.id, super.key});

  final String id;

  @override
  State<FavoriteDetailsScreen> createState() => _FavoriteDetailsScreenState();
}

class _FavoriteDetailsScreenState extends State<FavoriteDetailsScreen> {
  @override
  void initState() {
    unawaited(
      context.read<FavoritesDetailsCubit>().loadFavorite(favoriteId: widget.id),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final state = context.watch<FavoritesDetailsCubit>().state;

    return ColoredBox(
      color: Theme.of(context).scaffoldBackgroundColor,
      child: switch (state) {
        FavoritesDetailsLoading() => const LoadingView(),
        FavoriteNotFoundState() => ErrorView(
          error: AppLocalizations.of(context).favoriteDetailsNotFound,
        ),
        FavoritesDetailsError(:final error) => ErrorView(error: error),
        FavoritesDetailsSuccess(:final favorite) => _FavoriteDetailsSuccessView(
          favorite: favorite,
        ),
      },
    );
  }
}

class _FavoriteDetailsSuccessView extends StatelessWidget {
  const _FavoriteDetailsSuccessView({
    required this.favorite,
  });

  final PopulatedFavorite favorite;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(favorite.meal.title),
      ),
    );
  }
}
