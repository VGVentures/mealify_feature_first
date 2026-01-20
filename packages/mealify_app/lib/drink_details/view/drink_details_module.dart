import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mealify_app/drink_details/bloc/drink_details_cubit.dart';
import 'package:mealify_app/drink_details/view/drink_details_screen.dart';

class DrinkDetailsModule extends StatelessWidget {
  const DrinkDetailsModule({required this.drinkId, super.key});

  final String drinkId;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => DrinkDetailsCubit(
        drinksRepository: context.read(),
      ),
      child: DrinkDetailsScreen(drinkId: drinkId),
    );
  }
}
