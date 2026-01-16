import 'package:cocktaildb_api_client/cocktaildb_api_client.dart';
import 'package:meals_repository/meals_repository.dart';

sealed class IdeasState {}

class IdeasLoading implements IdeasState {
  const IdeasLoading();
}

class IdeasError implements IdeasState {
  const IdeasError(this.error);

  final Object error;
}

class IdeasSuccess implements IdeasState {
  const IdeasSuccess({required this.meal, required this.drink});

  final Meal meal;
  final Drink drink;
}
