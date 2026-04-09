import 'package:favorite_details/src/favorite_details_component.dart';
import 'package:favorite_details/src/view/favorite_details_view.dart';
import 'package:flutter/widgets.dart';

/// The Builder is responsible for wiring the dependencies for the favorite
/// details RIB and rendering the View.
class FavoriteDetailsBuilder extends StatelessWidget {
  /// Construct a builder that displays the favorite details view.
  const FavoriteDetailsBuilder({
    required this.component,
    required this.id,
    super.key,
  });

  /// The component that provides dependencies for this RIB.
  final FavoriteDetailsComponent component;

  /// The id of the favorite to display.
  final String id;

  @override
  Widget build(BuildContext context) {
    return FavoriteDetailsView(component: component, id: id);
  }
}
