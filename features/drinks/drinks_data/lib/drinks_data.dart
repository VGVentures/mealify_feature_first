/// The drinks data layer: `DrinksRepository` implements `IDrinksRepository`
/// using TheCocktailDB over HTTP with a local Drift cache.
///
/// The converters in `src/mappers/` and the DTOs in `src/data_sources/*/dtos/`
/// are deliberately not exported: both are an implementation detail of the
/// repository, and `ApiDrink` is TheCocktailDB's wire shape rather than the
/// domain model.
///
/// That is a speed bump, not a wall. The api client is exported and its methods
/// return `ApiDrink`, so a consumer can still hold one without importing
/// anything under `src/`. Exporting data sources costs exactly this, the same
/// way it exposes the Drift row types.
library;

export 'src/data_sources/cocktaildb_api_client/cocktaildb_api_client.dart';
export 'src/data_sources/drinks_database/drinks_database.dart';
export 'src/repositories/drinks_repository.dart';
