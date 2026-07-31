/// The drinks data layer: `DrinksRepository` implements `IDrinksRepository`
/// using TheCocktailDB over HTTP with a local Drift cache.
///
/// The converters in `src/mappers/` are deliberately not exported. They are an
/// implementation detail of the repository.
library;

export 'src/data_sources/cocktaildb_api_client/cocktaildb_api_client.dart';
export 'src/data_sources/cocktaildb_api_client/dtos/api_drink.dart';
export 'src/data_sources/drinks_database/drinks_database.dart';
export 'src/repositories/drinks_repository.dart';
