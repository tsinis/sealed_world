import "package:sealed_languages/sealed_languages.dart";

final class CountryName {
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

  @override
  bool operator ==(covariant CountryName other) {
    if (identical(this, other)) return true;

    return other.common == common &&
        other.language.code == language.code &&
        other.official == official;
  }

  @override
  int get hashCode => common.hashCode ^ language.hashCode ^ official.hashCode;
}
