import 'package:cocktaildb_api_client/cocktaildb_api_client.dart';
import 'package:mealdb_api_client/mealdb_api_client.dart';

sealed class RandomMealState {}

class RandomMealLoading implements RandomMealState {
  const RandomMealLoading();
}

class RandomMealError implements RandomMealState {
  const RandomMealError(this.error);

  final Object error;
}

class RandomMealSuccess implements RandomMealState {
  const RandomMealSuccess({required this.meal, required this.drink});

  final Meal meal;
  final Drink drink;
}
