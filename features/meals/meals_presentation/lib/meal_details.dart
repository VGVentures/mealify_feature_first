/// The meal details screen, as its own entry point so an app can defer-load it
/// without pulling in the rest of `meals_presentation`.
library;

export 'src/meal_details/bloc/meal_details_cubit.dart';
export 'src/meal_details/bloc/meal_details_state.dart';
export 'src/meal_details/meal_details_module.dart';
export 'src/meal_details/views/meal_details_screen.dart';
