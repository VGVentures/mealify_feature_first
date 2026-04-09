import 'package:drink_details/src/drink_details_component.dart';
import 'package:drink_details/src/view/drink_details_view.dart';
import 'package:flutter/widgets.dart';

/// The Builder is responsible for wiring the dependencies for the drink details
/// RIB and rendering the View.
class DrinkDetailsBuilder extends StatelessWidget {
  /// Construct a builder that displays the drink details view.
  const DrinkDetailsBuilder({
    required this.component,
    required this.drinkId,
    super.key,
  });

  /// The component that provides dependencies for this RIB.
  final DrinkDetailsComponent component;

  /// The id of the drink to show details about.
  final String drinkId;

  @override
  Widget build(BuildContext context) {
    return DrinkDetailsView(component: component, drinkId: drinkId);
  }
}
