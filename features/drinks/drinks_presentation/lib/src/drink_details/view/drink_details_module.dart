import 'package:drinks_domain/drinks_domain.dart';
import 'package:drinks_presentation/src/drink_details/bloc/drink_details_cubit.dart';
import 'package:drinks_presentation/src/drink_details/view/drink_details_screen.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// The Module is responsible for loading the code related to the drink details
/// screen and setting up the dependencies for the screen
class DrinkDetailsModule extends StatelessWidget {
  /// Construct a module that displays the drink details screen
  const DrinkDetailsModule({
    required this.drinksRepository,
    required this.drinkId,
    super.key,
  });

  /// The repository for drinks
  final IDrinksRepository drinksRepository;

  /// The idea of the drink to show details about
  final String drinkId;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<DrinkDetailsCubit>(
      create: (context) =>
          DrinkDetailsCubit(drinksRepository: drinksRepository),
      child: DrinkDetailsScreen(drinkId: drinkId),
    );
  }
}
