import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mealify_app/ideas/bloc/ideas_cubit.dart';
import 'package:mealify_app/ideas/view/ideas_screen.dart';

class IdeasModule extends StatelessWidget {
  const IdeasModule({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<IdeasCubit>(
      child: const IdeasScreen(),
      create: (context) => IdeasCubit(
        drinksRepository: context.read(),
        mealsRepository: context.read(),
        favoritesRepository: context.read(),
      ),
    );
  }
}
