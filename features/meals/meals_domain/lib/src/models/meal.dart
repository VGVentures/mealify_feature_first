// No need to document every member for the demo app
// ignore_for_file: public_member_api_docs
import 'package:meta/meta.dart';

/// The Meal in the domain layer. It has no concept of any type of serialization
/// whether to API nor DB. Those are handled by their respective layers.
@immutable
class Meal {
  /// Construct a Meal
  const Meal({
    required this.id,
    required this.title,
    required this.instructions,
    required this.thumbnail,
    this.mealAlternate,
    this.category,
    this.area,
    this.tags,
    this.youtube,
    this.ingredient1,
    this.ingredient2,
    this.ingredient3,
    this.ingredient4,
    this.ingredient5,
    this.ingredient6,
    this.ingredient7,
    this.ingredient8,
    this.ingredient9,
    this.ingredient10,
    this.ingredient11,
    this.ingredient12,
    this.ingredient13,
    this.ingredient14,
    this.ingredient15,
    this.ingredient16,
    this.ingredient17,
    this.ingredient18,
    this.ingredient19,
    this.ingredient20,
    this.measure1,
    this.measure2,
    this.measure3,
    this.measure4,
    this.measure5,
    this.measure6,
    this.measure7,
    this.measure8,
    this.measure9,
    this.measure10,
    this.measure11,
    this.measure12,
    this.measure13,
    this.measure14,
    this.measure15,
    this.measure16,
    this.measure17,
    this.measure18,
    this.measure19,
    this.measure20,
    this.source,
    this.imageSource,
    this.creativeCommonsConfirmed,
    this.dateModified,
  });

  final String id;
  final String title;
  final String? mealAlternate;
  final String? category;
  final String? area;
  final String instructions;
  final String thumbnail;
  final String? tags;
  final String? youtube;
  final String? ingredient1;
  final String? ingredient2;
  final String? ingredient3;
  final String? ingredient4;
  final String? ingredient5;
  final String? ingredient6;
  final String? ingredient7;
  final String? ingredient8;
  final String? ingredient9;
  final String? ingredient10;
  final String? ingredient11;
  final String? ingredient12;
  final String? ingredient13;
  final String? ingredient14;
  final String? ingredient15;
  final String? ingredient16;
  final String? ingredient17;
  final String? ingredient18;
  final String? ingredient19;
  final String? ingredient20;
  final String? measure1;
  final String? measure2;
  final String? measure3;
  final String? measure4;
  final String? measure5;
  final String? measure6;
  final String? measure7;
  final String? measure8;
  final String? measure9;
  final String? measure10;
  final String? measure11;
  final String? measure12;
  final String? measure13;
  final String? measure14;
  final String? measure15;
  final String? measure16;
  final String? measure17;
  final String? measure18;
  final String? measure19;
  final String? measure20;
  final String? source;
  final String? imageSource;
  final String? creativeCommonsConfirmed;
  final String? dateModified;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Meal &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          title == other.title &&
          mealAlternate == other.mealAlternate &&
          category == other.category &&
          area == other.area &&
          instructions == other.instructions &&
          thumbnail == other.thumbnail &&
          tags == other.tags &&
          youtube == other.youtube &&
          ingredient1 == other.ingredient1 &&
          ingredient2 == other.ingredient2 &&
          ingredient3 == other.ingredient3 &&
          ingredient4 == other.ingredient4 &&
          ingredient5 == other.ingredient5 &&
          ingredient6 == other.ingredient6 &&
          ingredient7 == other.ingredient7 &&
          ingredient8 == other.ingredient8 &&
          ingredient9 == other.ingredient9 &&
          ingredient10 == other.ingredient10 &&
          ingredient11 == other.ingredient11 &&
          ingredient12 == other.ingredient12 &&
          ingredient13 == other.ingredient13 &&
          ingredient14 == other.ingredient14 &&
          ingredient15 == other.ingredient15 &&
          ingredient16 == other.ingredient16 &&
          ingredient17 == other.ingredient17 &&
          ingredient18 == other.ingredient18 &&
          ingredient19 == other.ingredient19 &&
          ingredient20 == other.ingredient20 &&
          measure1 == other.measure1 &&
          measure2 == other.measure2 &&
          measure3 == other.measure3 &&
          measure4 == other.measure4 &&
          measure5 == other.measure5 &&
          measure6 == other.measure6 &&
          measure7 == other.measure7 &&
          measure8 == other.measure8 &&
          measure9 == other.measure9 &&
          measure10 == other.measure10 &&
          measure11 == other.measure11 &&
          measure12 == other.measure12 &&
          measure13 == other.measure13 &&
          measure14 == other.measure14 &&
          measure15 == other.measure15 &&
          measure16 == other.measure16 &&
          measure17 == other.measure17 &&
          measure18 == other.measure18 &&
          measure19 == other.measure19 &&
          measure20 == other.measure20 &&
          source == other.source &&
          imageSource == other.imageSource &&
          creativeCommonsConfirmed == other.creativeCommonsConfirmed &&
          dateModified == other.dateModified;

  @override
  int get hashCode => Object.hashAll([
    id,
    title,
    mealAlternate,
    category,
    area,
    instructions,
    thumbnail,
    tags,
    youtube,
    ingredient1,
    ingredient2,
    ingredient3,
    ingredient4,
    ingredient5,
    ingredient6,
    ingredient7,
    ingredient8,
    ingredient9,
    ingredient10,
    ingredient11,
    ingredient12,
    ingredient13,
    ingredient14,
    ingredient15,
    ingredient16,
    ingredient17,
    ingredient18,
    ingredient19,
    ingredient20,
    measure1,
    measure2,
    measure3,
    measure4,
    measure5,
    measure6,
    measure7,
    measure8,
    measure9,
    measure10,
    measure11,
    measure12,
    measure13,
    measure14,
    measure15,
    measure16,
    measure17,
    measure18,
    measure19,
    measure20,
    source,
    imageSource,
    creativeCommonsConfirmed,
    dateModified,
  ]);

  @override
  String toString() {
    // No need to spread this over several lines
    // ignore: lines_longer_than_80_chars
    return 'Meal{id: $id, title: $title, mealAlternate: $mealAlternate, category: $category, area: $area, instructions: $instructions, thumbnail: $thumbnail, tags: $tags, youtube: $youtube, ingredient1: $ingredient1, ingredient2: $ingredient2, ingredient3: $ingredient3, ingredient4: $ingredient4, ingredient5: $ingredient5, ingredient6: $ingredient6, ingredient7: $ingredient7, ingredient8: $ingredient8, ingredient9: $ingredient9, ingredient10: $ingredient10, ingredient11: $ingredient11, ingredient12: $ingredient12, ingredient13: $ingredient13, ingredient14: $ingredient14, ingredient15: $ingredient15, ingredient16: $ingredient16, ingredient17: $ingredient17, ingredient18: $ingredient18, ingredient19: $ingredient19, ingredient20: $ingredient20, measure1: $measure1, measure2: $measure2, measure3: $measure3, measure4: $measure4, measure5: $measure5, measure6: $measure6, measure7: $measure7, measure8: $measure8, measure9: $measure9, measure10: $measure10, measure11: $measure11, measure12: $measure12, measure13: $measure13, measure14: $measure14, measure15: $measure15, measure16: $measure16, measure17: $measure17, measure18: $measure18, measure19: $measure19, measure20: $measure20, source: $source, imageSource: $imageSource, creativeCommonsConfirmed: $creativeCommonsConfirmed, dateModified: $dateModified}';
  }
}
