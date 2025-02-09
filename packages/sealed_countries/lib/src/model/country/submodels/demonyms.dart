import "package:sealed_currencies/sealed_currencies.dart";

import "../../../helpers/extensions/country_submodels/demonyms_extension.dart";

/// A class that represents the demonyms for a particular language.
///
/// The [Demonyms] class is a simple value object that represents the demonyms
/// for a particular language. It consists of a [NaturalLanguage] object that
/// represents the language, and two [String] values that represent the demonym
/// for females and males respectively. The [female] and [male] fields must not
/// be empty.
///
/// Example usage:
///
/// ```dart
/// final demonyms = Demonyms(
///   language: LangEng(),
///   female: "Englishwoman",
///   male: "Englishman",
/// );
/// print(demonyms.female); // Output: "Englishwoman"
/// print(demonyms.male); // Output: "Englishman"
/// ```
final class Demonyms implements JsonEncodable<Demonyms> {
  /// Creates a new [Demonyms] object with the given language and demonym
  /// values.
  ///
  /// The [female] and [male] parameters must not be empty.
  const Demonyms({
    required this.language,
    required this.female,
    required this.male,
  })  : assert(female.length > 0, "`female` value should not be empty!"),
        assert(male.length > 0, "`male` value should not be empty!");

  /// The natural language of this demonym.
  final NaturalLanguage language;

  /// The demonym for females.
  final String female;

  /// The demonym for males.
  final String male;

  @override
  String toString({bool short = true}) => short
      ? '''Demonyms(language: ${language.runtimeType}(), female: "$female", male: "$male")'''
      : 'Demonyms(language: $language, female: "$female", male: "$male")';

  @override
  String toJson({JsonCodec codec = const JsonCodec()}) => codec.encode(toMap());

  @override
  bool operator ==(covariant Demonyms other) {
    if (identical(this, other)) return true;

    return other.language == language &&
        other.female == female &&
        other.male == male;
  }

  @override
  int get hashCode => language.hashCode ^ female.hashCode ^ male.hashCode;
}
