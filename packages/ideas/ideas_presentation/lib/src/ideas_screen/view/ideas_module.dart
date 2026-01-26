import 'package:drinks_domain/drinks_domain.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ideas_presentation/src/ideas_screen/bloc/ideas_cubit.dart';
import 'package:ideas_presentation/src/ideas_screen/view/ideas_screen.dart';
import 'package:meals_domain/meals_domain.dart';

/// The Module  Idea Screen and its dependencies
class IdeasModule extends StatelessWidget {
  /// Constructs an Ideas module
  const IdeasModule({
    required this.onDrinkTapped,
    required this.onMealTapped,
    super.key = const Key('IdeasModule'),
  });

  /// The callback executed when a Drink is tapped. Used for routing.
  final ValueChanged<Drink> onDrinkTapped;

  /// The callback executed when a Meal is tapped. Used for routing.
  final ValueChanged<Meal> onMealTapped;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<IdeasCubit>(
      create: (context) {
        return IdeasCubit(
          drinksRepository: context.read(),
          mealsRepository: context.read(),
          favoritesRepository: context.read(),
        );
      },
      child: IdeasScreen(
        onDrinkTapped: onDrinkTapped,
        onMealTapped: onMealTapped,
      ),
    );
  }
}
