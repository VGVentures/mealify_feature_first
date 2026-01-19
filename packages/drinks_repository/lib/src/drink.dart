// No need to document every member for the demo app
// ignore_for_file: public_member_api_docs
import 'package:meta/meta.dart';

/// The Drink in the domain layer. It has no concept of any type of
/// serialization whether to API nor DB. Those are handled by their respective
/// layers.
@immutable
class Drink {
  const Drink({
    required this.id,
    required this.title,
    required this.instructions,
    required this.thumbnail,
    this.drinkAlternate,
    this.tags,
    this.video,
    this.category,
    this.iba,
    this.alcoholic,
    this.glass,
    this.instructionsEs,
    this.instructionsDe,
    this.instructionsFr,
    this.instructionsIt,
    this.instructionsZhHans,
    this.instructionsZhHant,
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
    this.imageSource,
    this.imageAttribution,
    this.creativeCommonsConfirmed,
    this.dateModified,
  });

  final String id;
  final String title;
  final String? drinkAlternate;
  final String? tags;
  final String? video;
  final String? category;
  final String? iba;
  final String? alcoholic;
  final String? glass;
  final String instructions;
  final String? instructionsEs;
  final String? instructionsDe;
  final String? instructionsFr;
  final String? instructionsIt;
  final String? instructionsZhHans;
  final String? instructionsZhHant;
  final String thumbnail;
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
  final String? imageSource;
  final String? imageAttribution;
  final String? creativeCommonsConfirmed;
  final String? dateModified;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Drink &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          title == other.title &&
          drinkAlternate == other.drinkAlternate &&
          tags == other.tags &&
          video == other.video &&
          category == other.category &&
          iba == other.iba &&
          alcoholic == other.alcoholic &&
          glass == other.glass &&
          instructions == other.instructions &&
          instructionsEs == other.instructionsEs &&
          instructionsDe == other.instructionsDe &&
          instructionsFr == other.instructionsFr &&
          instructionsIt == other.instructionsIt &&
          instructionsZhHans == other.instructionsZhHans &&
          instructionsZhHant == other.instructionsZhHant &&
          thumbnail == other.thumbnail &&
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
          imageSource == other.imageSource &&
          imageAttribution == other.imageAttribution &&
          creativeCommonsConfirmed == other.creativeCommonsConfirmed &&
          dateModified == other.dateModified;

  @override
  int get hashCode => Object.hashAll([
    id,
    title,
    drinkAlternate,
    tags,
    video,
    category,
    iba,
    alcoholic,
    glass,
    instructions,
    instructionsEs,
    instructionsDe,
    instructionsFr,
    instructionsIt,
    instructionsZhHans,
    instructionsZhHant,
    thumbnail,
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
    imageSource,
    imageAttribution,
    creativeCommonsConfirmed,
    dateModified,
  ]);

  @override
  String toString() {
    // No need to spread this over several lines
    // ignore: lines_longer_than_80_chars
    return 'Drink{id: $id, title: $title, drinkAlternate: $drinkAlternate, tags: $tags, video: $video, category: $category, iba: $iba, alcoholic: $alcoholic, glass: $glass, instructions: $instructions, instructionsEs: $instructionsEs, instructionsDe: $instructionsDe, instructionsFr: $instructionsFr, instructionsIt: $instructionsIt, instructionsZhHans: $instructionsZhHans, instructionsZhHant: $instructionsZhHant, thumbnail: $thumbnail, ingredient1: $ingredient1, ingredient2: $ingredient2, ingredient3: $ingredient3, ingredient4: $ingredient4, ingredient5: $ingredient5, ingredient6: $ingredient6, ingredient7: $ingredient7, ingredient8: $ingredient8, ingredient9: $ingredient9, ingredient10: $ingredient10, ingredient11: $ingredient11, ingredient12: $ingredient12, ingredient13: $ingredient13, ingredient14: $ingredient14, ingredient15: $ingredient15, measure1: $measure1, measure2: $measure2, measure3: $measure3, measure4: $measure4, measure5: $measure5, measure6: $measure6, measure7: $measure7, measure8: $measure8, measure9: $measure9, measure10: $measure10, measure11: $measure11, measure12: $measure12, measure13: $measure13, measure14: $measure14, measure15: $measure15, imageSource: $imageSource, imageAttribution: $imageAttribution, creativeCommonsConfirmed: $creativeCommonsConfirmed, dateModified: $dateModified}';
  }
}
