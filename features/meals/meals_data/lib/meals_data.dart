/// The meals data layer: `MealsRepository` implements `IMealsRepository` using
/// TheMealDB over HTTP with a local Drift cache.
///
/// The converters in `src/mappers/` and the DTOs in `src/data_sources/*/dtos/`
/// are deliberately not exported: both are an implementation detail of the
/// repository, and `ApiMeal` is TheMealDB's wire shape rather than the domain
/// model.
///
/// That is a speed bump, not a wall. The api client is exported and its methods
/// return `ApiMeal`, so a consumer can still hold one without importing
/// anything under `src/`. Exporting data sources costs exactly this, the same
/// way it exposes the Drift row types.
library;

export 'src/data_sources/mealdb_api_client/mealdb_api_client.dart';
export 'src/data_sources/meals_database/meals_database.dart';
export 'src/repositories/meals_repository.dart';
