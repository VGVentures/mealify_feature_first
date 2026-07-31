/// The favorites domain: `Favorite` with a populated meal and drink,
/// `FavoriteSummary` with just their ids, and `GetFavoriteQuery` to turn the
/// second into the first by combining three repositories.
library;

export 'src/models/favorite.dart';
export 'src/models/favorite_summary.dart';
export 'src/repositories/i_favorites_repository.dart';
export 'src/use_cases/get_favorite_query.dart';
