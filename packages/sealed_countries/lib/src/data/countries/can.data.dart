// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/country.dart";

extension type const _CanFactory._(CountryCan _) implements CountryCan {
  const _CanFactory() : this._(const CountryCan._());
}

/// A class that represents the the Canada country.
class CountryCan extends WorldCountry {
  /// {@template sealed_world.country_can_constructor}
  /// Creates a instance of [CountryCan] (Canada country).
  ///
  /// ISO 3166-1 Alpha-3 code: `CAN`, ISO 3166-1 Alpha-2 code: `CA`.
  /// {@endtemplate}
  const factory CountryCan() = _CanFactory;

  const CountryCan._()
    : super(
        name: const CountryName(
          language: LangEng(),
          official: "Canada",
          common: "Canada",
        ),
        tld: const [".ca"],
        code: "CAN",
        codeNumeric: "124",
        codeShort: "CA",
        cioc: "CAN",
        idd: const Idd(
          root: 1,
          suffixes: [
            587,
            587,
            403,
            780,
            819,
            902,
            226,
            519,
            289,
            905,
            438,
            514,
            343,
            613,
            418,
            581,
            306,
            705,
            249,
            600,
            506,
            709,
            450,
            579,
            807,
            647,
            416,
            236,
            778,
            604,
            250,
            204,
            867,
          ],
        ),
        altSpellings: const ["CA"],
        continent: const Americas(),
        subregion: const NorthAmerica(),
        latLng: const LatLng(60, -95),
        bordersCodes: const ["Usa"],
        areaMetric: 9984670,
        emoji: "🇨🇦",
        maps: const Maps(
          googleMaps: "jmEVLugreeqiZXxbA",
          openStreetMaps: "relation/1428125",
        ),
        population: 36991981,
        gini: const Gini(year: 2020, coefficient: 29.9),
        fifa: "CAN",
        car: const Car(sign: "CDN"),
        timezones: const [
          "UTC-08:00",
          "UTC-07:00",
          "UTC-06:00",
          "UTC-05:00",
          "UTC-04:00",
          "UTC-03:30",
        ],
        startOfWeek: Weekday.sunday,
        postalCode: const PostalCode(
          format: "@#@ #@#",
          regExpPattern:
              r"^([ABCEGHJKLMNPRSTVXY]\d[ABCEGHJKLMNPRSTVWXYZ]) ?(\d[ABCEGHJKLMNPRSTVWXYZ]\d)$",
        ),
      );
  @override
  List<FiatCurrency> get currencies => const [FiatCad()];
  @override
  CapitalInfo get capitalInfo => const CapitalInfo(
    capital: Capital("Ottawa"),
    latLng: LatLng(45.42, -75.7),
  );
  @override
  List<RegionalBloc> get regionalBlocs => const [BlocNAFTA()];
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(language: LangEng(), female: "Canadian", male: "Canadian"),
    Demonyms(language: LangFra(), female: "Canadienne", male: "Canadien"),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(language: LangEng(), official: "Canada", common: "Canada"),
    CountryName(language: LangFra(), official: "Canada", common: "Canada"),
  ];
  @override
  List<NaturalLanguage> get languages => const [LangEng(), LangFra()];
}
