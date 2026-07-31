/// The meals data layer: `MealsRepository` implements `IMealsRepository` using
/// TheMealDB over HTTP with a local Drift cache.
///
/// The converters in `src/mappers/` are deliberately not exported. They are an
/// implementation detail of the repository.
library;

export 'src/data_sources/mealdb_api_client/dtos/api_meal.dart';
export 'src/data_sources/mealdb_api_client/mealdb_api_client.dart';
export 'src/data_sources/meals_database/meals_database.dart';
export 'src/repositories/meals_repository.dart';
