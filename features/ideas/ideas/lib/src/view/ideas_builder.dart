import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ideas/src/ideas_component.dart';
import 'package:ideas/src/ideas_listener.dart';
import 'package:ideas/src/interactor/ideas_interactor.dart';
import 'package:ideas/src/view/ideas_view.dart';
import 'package:provider/provider.dart';

/// The Builder wires the dependencies for the Ideas RIB.
class IdeasBuilder extends StatelessWidget {
  /// Construct the ideas builder.
  const IdeasBuilder({
    required this.component,
    required this.listener,
    super.key = const Key('IdeasBuilder'),
  });

  /// The component that provides dependencies for this RIB.
  final IdeasComponent component;

  /// The listener for events emitted by this RIB.
  final IdeasListener listener;

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<IdeasListener>.value(value: listener),
        BlocProvider<IdeasInteractor>(
          create: (_) => IdeasInteractor(
            drinksRepository: component.drinksRepository,
            mealsRepository: component.mealsRepository,
            favoritesRepository: component.favoritesRepository,
          ),
        ),
      ],
      child: const IdeasView(),
    );
  }
}
