import 'dart:async';

import 'package:favorites_domain/favorites_domain.dart';
import 'package:favorites_presentation/src/favorite_details/bloc/favorites_details_cubit.dart';
import 'package:favorites_presentation/src/favorite_details/bloc/favorites_details_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mealify_design_system/mealify_design_system.dart';
import 'package:mealify_localizations/mealify_localizations.dart';

/// A screen that displays an individual Favorite
class FavoriteDetailsScreen extends StatefulWidget {
  /// Construct a [FavoriteDetailsScreen] with the given [Favorite] id.
  const FavoriteDetailsScreen({required this.id, super.key});

  /// The id of the favorite to display
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
          error: context.l10n.favoriteDetailsNotFound,
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

  final Favorite favorite;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _DetailViewTab.values.length,
      child: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            SliverOverlapAbsorber(
              handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
              sliver: SliverAppBar(
                pinned: true,
                expandedHeight: 250,
                title: Text(context.l10n.favoriteDetailsTitle),
                bottom: TabBar(
                  tabs: [
                    Tab(
                      text: context.l10n.mealDetailsTitle,
                    ),
                    Tab(
                      text: context.l10n.drinkDetailsTitle,
                    ),
                  ],
                ),
                flexibleSpace: FlexibleSpaceBar(
                  background: Stack(
                    fit: StackFit.expand,
                    children: [
                      TabBarView(
                        children: [
                          Image.network(
                            favorite.meal.thumbnail,
                            fit: BoxFit.cover,
                          ),
                          Image.network(
                            favorite.drink.thumbnail,
                            fit: BoxFit.cover,
                          ),
                        ],
                      ),
                      DecoratedBox(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            stops: const [0, 0.5, 1],
                            colors: [
                              Theme.of(context).scaffoldBackgroundColor,
                              Theme.of(
                                context,
                              ).scaffoldBackgroundColor.withAlpha(40),
                              Theme.of(context).scaffoldBackgroundColor,
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ];
        },
        body: TabBarView(
          children: [
            _TabContent(
              tab: _DetailViewTab.ingredients,
              padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 40),
              children: [
                Text(
                  favorite.meal.title,
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                const SizedBox(height: 20),
                Text(favorite.meal.instructions),
              ],
            ),
            _TabContent(
              tab: _DetailViewTab.ingredients,
              padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 40),
              children: [
                Text(
                  favorite.drink.title,
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                const SizedBox(height: 20),
                Text(favorite.drink.instructions),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _TabContent extends StatelessWidget {
  const _TabContent({
    required this.padding,
    required this.tab,
    required this.children,
  });

  final _DetailViewTab tab;
  final List<Widget> children;
  final EdgeInsets padding;

  @override
  Widget build(BuildContext context) {
    return ScrollConfiguration(
      behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
      child: CustomScrollView(
        key: PageStorageKey<_DetailViewTab>(tab),
        slivers: [
          SliverOverlapInjector(
            handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
          ),
          SliverPadding(
            padding: padding,
            sliver: SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) => children[index],
                childCount: children.length,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

enum _DetailViewTab { ingredients, instructions }
