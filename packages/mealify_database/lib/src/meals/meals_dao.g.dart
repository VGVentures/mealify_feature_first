// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meals_dao.dart';

// ignore_for_file: type=lint
mixin _$MealsDaoMixin on DatabaseAccessor<MealifyDatabase> {
  Meals get meals => attachedDatabase.meals;
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

  MealsDaoManager get managers => MealsDaoManager(this);
}

class MealsDaoManager {
  final _$MealsDaoMixin _db;
  MealsDaoManager(this._db);
  $MealsTableManager get meals =>
      $MealsTableManager(_db.attachedDatabase, _db.meals);
}
