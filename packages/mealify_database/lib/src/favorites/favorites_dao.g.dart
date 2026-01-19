// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favorites_dao.dart';

// ignore_for_file: type=lint
mixin _$FavoritesDaoMixin on DatabaseAccessor<MealifyDatabase> {
  Meals get meals => attachedDatabase.meals;
  Drinks get drinks => attachedDatabase.drinks;
  Favorites get favorites => attachedDatabase.favorites;
  Selectable<Favorite> findFavoriteById(String favoriteId) {
    return customSelect(
      'SELECT * FROM favorites WHERE id = ?1',
      variables: [Variable<String>(favoriteId)],
      readsFrom: {favorites},
    ).asyncMap(favorites.mapFromRow);
  }

  Selectable<Favorite> findAllFavorites() {
    return customSelect(
      'SELECT * FROM favorites ORDER BY created_at DESC',
      variables: [],
      readsFrom: {favorites},
    ).asyncMap(favorites.mapFromRow);
  }

  Future<int> deleteFavorite(String favoriteId) {
    return customUpdate(
      'DELETE FROM favorites WHERE id = ?1',
      variables: [Variable<String>(favoriteId)],
      updates: {favorites},
      updateKind: UpdateKind.delete,
    );
  }

  Selectable<Drink> findDrinkById(String id) {
    return customSelect(
      'SELECT * FROM drinks WHERE id_drink = ?1',
      variables: [Variable<String>(id)],
      readsFrom: {drinks},
    ).asyncMap(drinks.mapFromRow);
  }

  Selectable<Drink> findDrinksByIds(List<String> var1) {
    var $arrayStartIndex = 1;
    final expandedvar1 = $expandVar($arrayStartIndex, var1.length);
    $arrayStartIndex += var1.length;
    return customSelect(
      'SELECT * FROM drinks WHERE id_drink IN ($expandedvar1)',
      variables: [for (var $ in var1) Variable<String>($)],
      readsFrom: {drinks},
    ).asyncMap(drinks.mapFromRow);
  }

  Selectable<Meal> findMealById(String id) {
    return customSelect(
      'SELECT * FROM meals WHERE id_meal = ?1',
      variables: [Variable<String>(id)],
      readsFrom: {meals},
    ).asyncMap(meals.mapFromRow);
  }

  Selectable<Meal> findMealsByIds(List<String> var1) {
    var $arrayStartIndex = 1;
    final expandedvar1 = $expandVar($arrayStartIndex, var1.length);
    $arrayStartIndex += var1.length;
    return customSelect(
      'SELECT * FROM meals WHERE id_meal IN ($expandedvar1)',
      variables: [for (var $ in var1) Variable<String>($)],
      readsFrom: {meals},
    ).asyncMap(meals.mapFromRow);
  }

  FavoritesDaoManager get managers => FavoritesDaoManager(this);
}

class FavoritesDaoManager {
  final _$FavoritesDaoMixin _db;
  FavoritesDaoManager(this._db);
  $MealsTableManager get meals =>
      $MealsTableManager(_db.attachedDatabase, _db.meals);
  $DrinksTableManager get drinks =>
      $DrinksTableManager(_db.attachedDatabase, _db.drinks);
  $FavoritesTableManager get favorites =>
      $FavoritesTableManager(_db.attachedDatabase, _db.favorites);
}
