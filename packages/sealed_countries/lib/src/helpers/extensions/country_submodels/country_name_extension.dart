import "package:sealed_currencies/sealed_currencies.dart";

import "../../../model/country/submodels/country_name.dart";

extension CountryNameExtension on CountryName {
  /// Non-nullable alias for a `name`. The common name of the country.
  String get common => name;

  /// Non-nullable alias for a `fullName`. The official name of the country.
  // ignore: avoid-non-null-assertion, field is required and immutable.
  String get official => fullName!;

  static CountryName fromMap(JsonMap map) => CountryName(
        language: NaturalLanguage.fromCode(map["language"].toString()),
        official: map["official"] as String,
        common: map["common"] as String,
      );

  CountryName copyWith({
    NaturalLanguage? language,
    String? official,
    String? common,
  }) =>
      CountryName(
        language: language ?? this.language,
        official: official ?? this.official,
        common: common ?? name,
      );

  Map<String, Object?> toMap() => {
        "language": language.code,
        "official": fullName,
        "common": name,
      };
}
