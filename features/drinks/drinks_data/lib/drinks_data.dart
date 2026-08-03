/// The drinks data layer: `DrinksRepository` implements `IDrinksRepository`
/// using TheCocktailDB over HTTP with a local Drift cache.
///
/// The converters in `src/mappers/` and the DTOs in `src/data_sources/*/dtos/`
/// are deliberately not exported. Both are an implementation detail of the
/// repository, and an exported DTO would let a consumer bind to TheCocktailDB's
/// wire shape instead of the domain model.
library;

export 'src/data_sources/cocktaildb_api_client/cocktaildb_api_client.dart';
export 'src/data_sources/drinks_database/drinks_database.dart';
export 'src/repositories/drinks_repository.dart';
