import 'package:favorites_list/src/favorites_list_component.dart';
import 'package:favorites_list/src/interactor/favorites_list_interactor.dart';
import 'package:favorites_list/src/view/favorites_list_view.dart';
import 'package:favorites_list_item/favorites_list_item.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

/// The Builder wires the dependencies for the favorites list RIB.
///
/// Accepts the parent's [FavoritesListComponent] and a
/// [FavoritesListItemListener] (constructed by the app layer with navigation
/// lambdas) and threads them down to child Builders via Provider.
class FavoritesListBuilder extends StatelessWidget {
  /// Construct the favorites list builder.
  const FavoritesListBuilder({
    required this.component,
    required this.listener,
    super.key,
  });

  /// The component that provides dependencies for this RIB.
  final FavoritesListComponent component;

  /// The listener for child list item events (threaded from app layer).
  final FavoritesListItemListener listener;

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<FavoritesListComponent>.value(value: component),
        Provider<FavoritesListItemListener>.value(value: listener),
        BlocProvider<FavoritesListInteractor>(
          create: (_) => FavoritesListInteractor(
            favoritesRepository: component.favoritesRepository,
          ),
        ),
      ],
      child: const FavoritesListView(),
    );
  }
}
