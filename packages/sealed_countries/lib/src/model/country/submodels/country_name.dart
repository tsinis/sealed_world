import "package:sealed_languages/sealed_languages.dart";

class CountryName {
  const CountryName({
    required this.language,
    required this.official,
    required this.common,
  });

  const CountryName.international({
    required this.common,
    required this.official,
  }) : language = const LangEng();

  final String common;
  final NaturalLanguage language;
  final String official;

  @override
  String toString() =>
      "CountryName(language: $language, official: $official, common: $common)";
}
