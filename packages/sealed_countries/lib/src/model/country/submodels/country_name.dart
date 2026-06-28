import "package:sealed_currencies/sealed_currencies.dart";

import "../../../helpers/extensions/country_submodels/country_name_extension.dart";

/// A class that represents the name of a country in a particular language.
///
/// The main difference to the super [TranslatedName] class is that the
/// The official (`fullName`) must be provided and cannot be empty.
/// The CountryName class is a simple value object that represents the name of
/// a country in a particular language. It consists of a [NaturalLanguage]
/// object that represents the language, and two [String] values that represent
/// the official and common names of the country. The official and common
/// fields must not be empty.
///
/// Example usage:
///
/// ```dart
/// import "package:sealed_countries/sealed_countries.dart";
///
/// void main() {
///   const countryName = CountryName(
///     language: LangSlk(),
///     official: "Slovenská republika",
///     common: "Slovensko",
///   );
///   assert(countryName.official == "Slovenská republika");
///   assert(countryName.common == "Slovensko");
/// }
/// ```
final class CountryName extends TranslatedName {
  /// Creates a new `CountryName` object with the given language and name
  /// values.
  ///
  /// The [official] and [common] parameters must not be empty.
  const CountryName({
    required NaturalLanguage language,
    required String official,
    required String common,
  }) : assert(official.length > 0, "`official` should not be empty!"),
       assert(common.length > 0, "`common` should not be empty!"),
       super(language, name: common, fullName: official);

  @override
  String toString({bool short = true}) => short
      ? name
      : '''CountryName(language: ${language.runtimeType}(), official: "$official", common: "$common")''';

  @override
  String toJson({JsonCodec codec = const JsonCodec()}) => codec.encode(toMap());
}
