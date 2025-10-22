// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/country.dart";

extension type const _BesFactory._(CountryBes _) implements CountryBes {
  const _BesFactory() : this._(const CountryBes._());
}

/// A class that represents the the Caribbean Netherlands country.
class CountryBes extends WorldCountry {
  /// {@template sealed_world.country_bes_constructor}
  /// Creates a instance of [CountryBes] (Caribbean Netherlands country).
  ///
  /// ISO 3166-1 Alpha-3 code: `BES`, ISO 3166-1 Alpha-2 code: `BQ`.
  /// {@endtemplate}
  const factory CountryBes() = _BesFactory;

  const CountryBes._()
    : super(
        name: const CountryName(
          language: LangEng(),
          official: "Bonaire, Sint Eustatius and Saba",
          common: "Caribbean Netherlands",
        ),
        tld: const [".bq", ".nl"],
        code: "BES",
        codeNumeric: "535",
        codeShort: "BQ",
        independent: false,
        unMember: false,
        idd: const Idd(root: 5, suffixes: [99]),
        altSpellings: const ["BES islands"],
        continent: const Americas(),
        subregion: const Caribbean(),
        latLng: const LatLng(12.18, -68.25),
        areaMetric: 328,
        emoji: "🇧🇶",
        maps: const Maps(
          googleMaps: "4XVes1P6uEDTz77WA",
          openStreetMaps: "relation/1216720",
        ),
        population: 30397,
        car: const Car(),
        timezones: const ["UTC-04:00"],
      );
  @override
  List<FiatCurrency> get currencies => const [FiatUsd()];
  @override
  CapitalInfo get capitalInfo => const CapitalInfo(
    capital: Capital("Kralendijk"),
    latLng: LatLng(12.14, -68.27),
  );
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(language: LangEng(), female: "Dutch", male: "Dutch"),
    Demonyms(language: LangFra(), female: "Néerlandaise", male: "Néerlandais"),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(
      language: LangNld(),
      official: "Bonaire, Sint Eustatius en Saba",
      common: "Caribisch Nederland",
    ),
  ];
  @override
  List<NaturalLanguage> get languages => const [LangEng(), LangNld()];
}
