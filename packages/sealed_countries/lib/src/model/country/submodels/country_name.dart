import "package:sealed_currencies/sealed_currencies.dart";

/// A class that represents the name of a country in a particular language.
///
/// The `CountryName` class is a simple value object that represents the name of
/// a country in a particular language. It consists of a `NaturalLanguage`
/// object that represents the language, and two `String` values that represent
/// the official and common names of the country. The `official` and `common`
/// fields must not be empty.
///
/// Example usage:
///
/// ```dart
/// final countryName = CountryName(
///   language: LangSlk(),
///   official: "Slovenská republika",
///   common: "Slovensko",
/// );
/// print(countryName.official); // Prints: "Slovenská republika"
/// print(countryName.common); // Prints: "Slovensko"
/// ```
final class CountryName {
  /// Creates a new `CountryName` object with the given language and name
  /// values.
  ///
  /// The `official` and `common` parameters must not be empty.
  const CountryName({
    required this.language,
    required this.official,
    required this.common,
  })  : assert(official.length > 0, "`official` should not be empty!"),
        assert(common.length > 0, "`common` should not be empty!");

  /// Creates a new `CountryName` object with the given international name
  /// values.
  ///
  /// The `official` and `common` parameters must not be empty.
  const CountryName.international({
    required this.common,
    required this.official,
  })  : language = const LangEng(),
        assert(official.length > 0, "`official` should not be empty!"),
        assert(common.length > 0, "`common` should not be empty!");

  /// The common name of this country.
  final String common;

  /// The natural language of this country name.
  final NaturalLanguage language;

  /// The official name of this country.
  final String official;

  @override
  String toString() =>
      "CountryName(language: $language, official: $official, common: $common)";

  @override
  bool operator ==(covariant CountryName other) {
    if (identical(this, other)) return true;

    return other.common == common &&
        other.language == language &&
        other.official == official;
  }

  @override
  int get hashCode => common.hashCode ^ language.hashCode ^ official.hashCode;
}
