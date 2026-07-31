/// The favorites data layer: `FavoritesRepository` implements
/// `IFavoritesRepository` against a local Drift database.
///
/// It reads and writes `FavoriteSummary`, which holds ids rather than a
/// populated meal and drink, because this package must not know how to fetch
/// either. `GetFavoriteQuery` does that instead.
library;

export 'src/data_sources/favorites_database/favorites_database.dart';
export 'src/repositories/favorites_repository.dart';
