import 'package:favorites_domain/favorites_domain.dart';
import 'package:mocktail/mocktail.dart';

/// A mock favorites repository, shared by the tests in this package.
class MockFavoritesRepository extends Mock implements IFavoritesRepository {}

/// A mock [GetFavoriteQuery], shared by the tests in this package.
class MockGetFavoriteQuery extends Mock implements GetFavoriteQuery {}
