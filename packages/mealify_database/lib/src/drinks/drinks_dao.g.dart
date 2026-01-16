// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'drinks_dao.dart';

// ignore_for_file: type=lint
mixin _$DrinksDaoMixin on DatabaseAccessor<MealifyDatabase> {
  Drinks get drinks => attachedDatabase.drinks;
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

  DrinksDaoManager get managers => DrinksDaoManager(this);
}

class DrinksDaoManager {
  final _$DrinksDaoMixin _db;
  DrinksDaoManager(this._db);
  $DrinksTableManager get drinks =>
      $DrinksTableManager(_db.attachedDatabase, _db.drinks);
}
