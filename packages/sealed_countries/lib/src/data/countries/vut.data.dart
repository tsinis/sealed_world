// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/country.dart";

extension type const _VutFactory._(CountryVut _) implements CountryVut {
  const _VutFactory() : this._(const CountryVut._());
}

/// A class that represents the Vanuatu country.
class CountryVut extends WorldCountry {
  /// {@template sealed_world.country_vut_constructor}
  /// Creates a instance of [CountryVut] (Vanuatu country).
  ///
  /// ISO 3166-1 Alpha-3 code: `VUT`, ISO 3166-1 Alpha-2 code: `VU`.
  /// {@endtemplate}
  const factory CountryVut() = _VutFactory;

  const CountryVut._()
    : super(
        name: const CountryName(
          language: LangEng(),
          official: "Republic of Vanuatu",
          common: "Vanuatu",
        ),
        tld: const [".vu"],
        code: "VUT",
        codeNumeric: "548",
        codeShort: "VU",
        cioc: "VAN",
        idd: const Idd(root: 6, suffixes: [78]),
        altSpellings: const [
          "VU",
          "Republic of Vanuatu",
          "Ripablik blong Vanuatu",
          "République de Vanuatu",
        ],
        continent: const Oceania(),
        subregion: const Melanesia(),
        latLng: const LatLng(-16, 167),
        areaMetric: 12189,
        emoji: "🇻🇺",
        maps: const Maps(
          googleMaps: "hwAjehcT7VfvP5zJ8",
          openStreetMaps: "relation/2177246",
        ),
        population: 307150,
        gini: const Gini(year: 2010, coefficient: 37.6),
        fifa: "VAN",
        car: const Car(sign: "VU"),
        timezones: const ["UTC+11:00"],
      );
  @override
  List<FiatCurrency> get currencies => const [FiatVuv()];
  @override
  CapitalInfo get capitalInfo => const CapitalInfo(
    capital: Capital("Port Vila"),
    latLng: LatLng(-17.73, 168.32),
  );
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(language: LangEng(), female: "Ni-Vanuatu", male: "Ni-Vanuatu"),
    Demonyms(language: LangFra(), female: "Vanuatuane", male: "Vanuatuan"),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(
      language: LangBis(),
      official: "Ripablik blong Vanuatu",
      common: "Vanuatu",
    ),
    CountryName(
      language: LangEng(),
      official: "Republic of Vanuatu",
      common: "Vanuatu",
    ),
    CountryName(
      language: LangFra(),
      official: "République de Vanuatu",
      common: "Vanuatu",
    ),
  ];
  @override
  List<NaturalLanguage> get languages => const [
    LangBis(),
    LangEng(),
    LangFra(),
  ];
}
