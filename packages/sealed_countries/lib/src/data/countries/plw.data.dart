// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/country.dart";

extension type const _PlwFactory._(CountryPlw _) implements CountryPlw {
  const _PlwFactory() : this._(const CountryPlw._());
}

/// A class that represents the the Palau country.
class CountryPlw extends WorldCountry {
  /// {@template sealed_world.country_plw_constructor}
  /// Creates a instance of [CountryPlw] (Palau country).
  ///
  /// ISO 3166-1 Alpha-3 code: `PLW`, ISO 3166-1 Alpha-2 code: `PW`.
  /// {@endtemplate}
  const factory CountryPlw() = _PlwFactory;

  const CountryPlw._()
    : super(
        name: const CountryName(
          language: LangEng(),
          official: "Republic of Palau",
          common: "Palau",
        ),
        tld: const [".pw"],
        code: "PLW",
        codeNumeric: "585",
        codeShort: "PW",
        cioc: "PLW",
        idd: const Idd(root: 6, suffixes: [80]),
        altSpellings: const ["PW", "Republic of Palau", "Beluu er a Belau"],
        continent: const Oceania(),
        subregion: const Micronesia(),
        latLng: const LatLng(7.5, 134.5),
        areaMetric: 459,
        emoji: "🇵🇼",
        maps: const Maps(
          googleMaps: "MVasQBbUkQP7qQDR9",
          openStreetMaps: "relation/571805",
        ),
        population: 18092,
        car: const Car(sign: "PAL"),
        timezones: const ["UTC+09:00"],
        postalCode: const PostalCode(
          format: "96940",
          regExpPattern: r"^(96940)$",
        ),
      );
  @override
  List<FiatCurrency> get currencies => const [FiatUsd()];
  @override
  CapitalInfo get capitalInfo => const CapitalInfo(
    capital: Capital("Ngerulmud"),
    latLng: LatLng(7.5, 134.62),
  );
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(language: LangEng(), female: "Palauan", male: "Palauan"),
    Demonyms(language: LangFra(), female: "Paluane", male: "Paluan"),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(
      language: LangEng(),
      official: "Republic of Palau",
      common: "Palau",
    ),
  ];
  @override
  List<NaturalLanguage> get languages => const [LangEng()];
}
