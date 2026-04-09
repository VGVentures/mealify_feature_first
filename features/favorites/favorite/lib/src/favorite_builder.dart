import 'dart:async';

import 'package:favorite/src/favorite_component.dart';
import 'package:favorite/src/interactor/favorite_interactor.dart';
import 'package:favorite/src/interactor/favorite_state.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// A data provider Builder that fetches a single Favorite and exposes its
/// state via a [builder] callback.
class FavoriteBuilder extends StatelessWidget {
  /// Construct a FavoriteBuilder.
  const FavoriteBuilder({
    required this.component,
    required this.favoriteId,
    required this.builder,
    super.key,
  });

  /// The component that provides the favorites repository.
  final FavoriteComponent component;

  /// The id of the favorite to fetch.
  final String favoriteId;

  /// A builder callback that receives the current [FavoriteState].
  final Widget Function(BuildContext context, FavoriteState state) builder;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) {
        final interactor = FavoriteInteractor(
          favoritesRepository: component.favoritesRepository,
        );

        unawaited(interactor.loadFavorite(favoriteId));

        return interactor;
      },
      child: BlocBuilder<FavoriteInteractor, FavoriteState>(builder: builder),
    );
  }
}
