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
}
