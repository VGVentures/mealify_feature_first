import 'package:drinks_domain/drinks_domain.dart';
import 'package:ingredients_domain/ingredients_domain.dart';
import 'package:test/test.dart';

void main() {
  group('DrinkIngredients extension', () {
    test(
      'converts all Drink ingredients + measurements -> List<Ingredient>',
      () {
        const meal = Drink(
          id: 'DRINK_ID',
          title: 'title',
          instructions: 'instructions',
          thumbnail: 'thumbnail',
          ingredient1: 'ingredient1',
          ingredient2: 'ingredient2',
          ingredient3: 'ingredient3',
          ingredient4: 'ingredient4',
          ingredient5: 'ingredient5',
          ingredient6: 'ingredient6',
          ingredient7: 'ingredient7',
          ingredient8: 'ingredient8',
          ingredient9: 'ingredient9',
          ingredient10: 'ingredient10',
          ingredient11: 'ingredient11',
          ingredient12: 'ingredient12',
          ingredient13: 'ingredient13',
          ingredient14: 'ingredient14',
          ingredient15: 'ingredient15',
          measure1: 'measure1',
          measure2: 'measure2',
          measure3: 'measure3',
          measure4: 'measure4',
          measure5: 'measure5',
          measure6: 'measure6',
          measure7: 'measure7',
          measure8: 'measure8',
          measure9: 'measure9',
          measure10: 'measure10',
          measure11: 'measure11',
          measure12: 'measure12',
          measure13: 'measure13',
          measure14: 'measure14',
          measure15: 'measure15',
        );

        expect(meal.ingredients, <Ingredient>[
          (name: 'ingredient1', measurement: 'measure1'),
          (name: 'ingredient2', measurement: 'measure2'),
          (name: 'ingredient3', measurement: 'measure3'),
          (name: 'ingredient4', measurement: 'measure4'),
          (name: 'ingredient5', measurement: 'measure5'),
          (name: 'ingredient6', measurement: 'measure6'),
          (name: 'ingredient7', measurement: 'measure7'),
          (name: 'ingredient8', measurement: 'measure8'),
          (name: 'ingredient9', measurement: 'measure9'),
          (name: 'ingredient10', measurement: 'measure10'),
          (name: 'ingredient11', measurement: 'measure11'),
          (name: 'ingredient12', measurement: 'measure12'),
          (name: 'ingredient13', measurement: 'measure13'),
          (name: 'ingredient14', measurement: 'measure14'),
          (name: 'ingredient15', measurement: 'measure15'),
        ]);
      },
    );

    test(
      'filters out null & empty values',
      () {
        const meal = Drink(
          id: 'MEAL_ID',
          title: 'title',
          instructions: 'instructions',
          thumbnail: 'thumbnail',
          ingredient1: 'ingredient1',
          ingredient2: 'ingredient2',
          ingredient3: 'ingredient3',
          ingredient4: 'ingredient4',
          ingredient5: 'ingredient5',
          ingredient6: 'ingredient6',
          ingredient7: 'ingredient7',
          ingredient8: 'ingredient8',
          ingredient9: 'ingredient9',
          ingredient10: '',
          measure1: 'measure1',
          measure2: 'measure2',
          measure3: 'measure3',
          measure4: 'measure4',
          measure5: 'measure5',
          measure6: 'measure6',
          measure7: 'measure7',
          measure8: 'measure8',
          measure9: '',
          measure10: 'measure10',
          measure11: 'measure11',
          measure12: 'measure12',
          measure13: 'measure13',
          measure14: 'measure14',
          measure15: 'measure15',
        );

        expect(meal.ingredients, <Ingredient>[
          (name: 'ingredient1', measurement: 'measure1'),
          (name: 'ingredient2', measurement: 'measure2'),
          (name: 'ingredient3', measurement: 'measure3'),
          (name: 'ingredient4', measurement: 'measure4'),
          (name: 'ingredient5', measurement: 'measure5'),
          (name: 'ingredient6', measurement: 'measure6'),
          (name: 'ingredient7', measurement: 'measure7'),
          (name: 'ingredient8', measurement: 'measure8'),
        ]);
      },
    );
  });
}
