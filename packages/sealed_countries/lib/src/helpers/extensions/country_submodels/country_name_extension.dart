import "package:sealed_currencies/sealed_currencies.dart";

import "../../../model/country/submodels/country_name.dart";

/// Provides extension methods for [CountryName] class.
/// {@macro submodels_class_extension}
extension CountryNameExtension on CountryName {
  /// Non-nullable alias for a `name`. The common name of the country.

  String get common => name;

  /// Non-nullable alias for a `fullName`. The official name of the country.
  // ignore: avoid-non-null-assertion, field is required and immutable.
  String get official => fullName!;

  /// {@macro to_map_method}
  static CountryName fromMap(JsonMap map) => CountryName(
        language: NaturalLanguage.fromCode(map["language"].toString()),
        official: map["official"].toString(),
        common: map["common"].toString(),
      );

  /// {@macro copy_with_method}
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

  /// {@macro to_map_method}
  JsonObjectMap toMap() => {
        "common": name,
        "language": language.code,
        "official": fullName,
      };
}
