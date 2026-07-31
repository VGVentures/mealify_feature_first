/// The name of an Ingredient
typedef IngredientName = String;

/// The measurement of an Ingredient
typedef IngredientMeasurement = String?;

/// The combined name and measurement making up an Ingredient
typedef Ingredient = ({
  IngredientName name,
  IngredientMeasurement measurement,
});
