/// The meals data layer: `MealsRepository` implements `IMealsRepository` using
/// TheMealDB over HTTP with a local Drift cache.
///
/// The converters in `src/mappers/` and the DTOs in `src/data_sources/*/dtos/`
/// are deliberately not exported. Both are an implementation detail of the
/// repository, and an exported DTO would let a consumer bind to TheMealDB's
/// wire shape instead of the domain model.
library;

export 'src/data_sources/mealdb_api_client/mealdb_api_client.dart';
export 'src/data_sources/meals_database/meals_database.dart';
export 'src/repositories/meals_repository.dart';
