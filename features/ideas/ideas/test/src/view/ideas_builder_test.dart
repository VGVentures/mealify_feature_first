import 'package:flutter_test/flutter_test.dart';
import 'package:ideas/ideas.dart';
import 'package:mocktail/mocktail.dart';

class _MockIdeasComponent extends Mock implements IdeasComponent {}

void main() {
  group('IdeasBuilder', () {
    test('can be instantiated', () {
      expect(
        IdeasBuilder(
          component: _MockIdeasComponent(),
          listener: IdeasListener(
            onMealTapped: (_) {},
            onDrinkTapped: (_) {},
          ),
        ),
        isNotNull,
      );
    });
  });
}
