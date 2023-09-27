import "package:sealed_currencies/sealed_currencies.dart";

import "../../../model/country/submodels/demonyms.dart";

/// A class extension that adds utility methods to the `Demonyms` class.
extension DemonymsExtension on Demonyms {
  /// Returns `true` if the demonym for males and females is the same.
  ///
  /// Returns `true` if the `male` and `female` fields
  /// of this `Demonyms` object have the same
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

  Demonyms copyWith({
    NaturalLanguage? language,
    String? female,
    String? male,
  }) =>
      Demonyms(
        language: language ?? this.language,
        female: female ?? this.female,
        male: male ?? this.male,
      );

  Map<String, Object?> toMap() =>
      {"language": language.toMap(), "female": female, "male": male};

  static Demonyms fromMap(Map<String, dynamic> map) => Demonyms(
        language: NaturalLanguageJson.fromMap(map["language"] as JsonMap),
        female: map["female"] as String,
        male: map["male"] as String,
      );
}
