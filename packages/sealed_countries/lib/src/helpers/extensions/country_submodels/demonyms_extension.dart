import "package:sealed_currencies/sealed_currencies.dart";

import "../../../model/country/submodels/demonyms.dart";

/// Provides extension methods for [Demonyms] class.
/// {@macro submodels_class_extension}
extension DemonymsExtension on Demonyms {
  /// Returns `true` if the demonym for males and females is the same.
  ///
  /// Returns `true` if the [male] and [female] fields
  /// of this [Demonyms] object have the same
  /// value, and `false` otherwise.
  ///
  /// Example usage:
  ///
  /// ```dart
  /// final demonyms = Demonyms(
  ///   language: LangEng(),
  ///   female: "Englishwoman",
  ///   male: "Englishman",
  /// );
  /// final areSame = demonyms.areSame;
  /// print(areSame); // Prints: false
  /// ```
  bool get areSame => male == female;

  /// {@macro copy_with_method}
  Demonyms copyWith({
    NaturalLanguage? language,
    String? female,
    String? male,
  }) => Demonyms(
    language: language ?? this.language,
    female: female ?? this.female,
    male: male ?? this.male,
  );

  /// {@macro to_map_method}
  JsonObjectMap toMap() => {
    "female": female,
    "language": language.code,
    "male": male,
  };

  /// {@macro from_map_method}
  static Demonyms fromMap(JsonMap map) => Demonyms(
    language: NaturalLanguage.fromCode(map["language"].toString()),
    female: map["female"].toString(),
    male: map["male"].toString(),
  );
}
