import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mealify_app/meal_details/bloc/meal_details_cubit.dart';
import 'package:mealify_app/meal_details/view/meal_details_screen.dart';

class MealDetailsModule extends StatelessWidget {
  const MealDetailsModule({required this.mealId, super.key});

  final String mealId;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<MealDetailsCubit>(
      create: (BuildContext context) {
        return MealDetailsCubit(mealsRepository: context.read());
      },
      child: MealDetailsScreen(mealId: mealId),
    );
  }
}
