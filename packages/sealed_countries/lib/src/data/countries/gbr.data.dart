// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/country.dart";

extension type const _GbrFactory._(CountryGbr _) implements CountryGbr {
  const _GbrFactory() : this._(const CountryGbr._());
}

/// A class that represents the the United Kingdom country.
class CountryGbr extends WorldCountry {
  /// {@template sealed_world.country_gbr_constructor}
  /// Creates a instance of [CountryGbr] (United Kingdom country).
  ///
  /// ISO 3166-1 Alpha-3 code: `GBR`, ISO 3166-1 Alpha-2 code: `GB`.
  /// {@endtemplate}
  const factory CountryGbr() = _GbrFactory;

  const CountryGbr._()
    : super(
        name: const CountryName(
          language: LangEng(),
          official: "United Kingdom of Great Britain and Northern Ireland",
          common: "United Kingdom",
        ),
        tld: const [".uk"],
        code: "GBR",
        codeNumeric: "826",
        codeShort: "GB",
        cioc: "GBR",
        idd: const Idd(root: 4, suffixes: [4]),
        altSpellings: const ["GB", "UK", "Great Britain"],
        continent: const Europe(),
        subregion: const NorthernEurope(),
        latLng: const LatLng(54, -2),
        bordersCodes: const ["Irl"],
        areaMetric: 242900,
        emoji: "🇬🇧",
        maps: const Maps(
          googleMaps: "FoDtc3UKMkFsXAjHA",
          openStreetMaps: "relation/62149",
        ),
        population: 67215293,
        gini: const Gini(year: 2017, coefficient: 35.1),
        car: const Car(sign: "GB", isRightSide: false),
        timezones: const [
          "UTC-08:00",
          "UTC-05:00",
          "UTC-04:00",
          "UTC-03:00",
          "UTC-02:00",
          "UTC+00:00",
          "UTC+01:00",
          "UTC+02:00",
          "UTC+06:00",
        ],
        postalCode: const PostalCode(
          format: "@# #@@|@## #@@|@@# #@@|@@## #@@|@#@ #@@|@@#@ #@@|GIR0AA",
          regExpPattern:
              r"^(([A-Z]\d{2}[A-Z]{2})|([A-Z]\d{3}[A-Z]{2})|([A-Z]{2}\d{2}[A-Z]{2})|([A-Z]{2}\d{3}[A-Z]{2})|([A-Z]\d[A-Z]\d[A-Z]{2})|([A-Z]{2}\d[A-Z]\d[A-Z]{2})|(GIR0AA))$",
        ),
      );
  @override
  List<FiatCurrency> get currencies => const [FiatGbp()];
  @override
  CapitalInfo get capitalInfo => const CapitalInfo(
    capital: Capital("London"),
    latLng: LatLng(51.5, -0.08),
  );
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(language: LangEng(), female: "British", male: "British"),
    Demonyms(language: LangFra(), female: "Britannique", male: "Britannique"),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(
      language: LangEng(),
      official: "United Kingdom of Great Britain and Northern Ireland",
      common: "United Kingdom",
    ),
  ];
  @override
  List<NaturalLanguage> get languages => const [LangEng()];
}
