import "package:sealed_currencies/sealed_currencies.dart";

import "../../../model/country/submodels/country_name.dart";

extension CountryNameExtension on CountryName {
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
        common: common ?? this.common,
      );

  Map<String, Object?> toMap() => {
        "common": common,
        "language": language.code,
        "official": official,
      };
}
