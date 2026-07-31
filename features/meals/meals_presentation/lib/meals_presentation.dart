/// The meals UI. This primary barrel re-exports every subfeature barrel; an app
/// that wants one screen should import that screen's barrel instead, so a
/// deferred import pulls in one screen rather than the whole feature.
library;

export 'meal_details.dart';
export 'src/meal_details/bloc/meal_details_cubit.dart';
export 'src/meal_details/bloc/meal_details_state.dart';
export 'src/meal_details/views/meal_details_screen.dart';
