import 'package:flutter/widgets.dart';
import 'package:meal_details/src/meal_details_component.dart';
import 'package:meal_details/src/view/meal_details_view.dart';

/// The Builder is responsible for wiring the dependencies for the meal details
/// RIB and rendering the View.
class MealDetailsBuilder extends StatelessWidget {
  /// Construct a builder that displays the meal details view.
  const MealDetailsBuilder({
    required this.component,
    required this.mealId,
    super.key,
  });

  /// The component that provides dependencies for this RIB.
  final MealDetailsComponent component;

  /// The id of the meal to show details about.
  final String mealId;

  @override
  Widget build(BuildContext context) {
    return MealDetailsView(component: component, mealId: mealId);
  }
}
