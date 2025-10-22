// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/country.dart";

extension type const _JeyFactory._(CountryJey _) implements CountryJey {
  const _JeyFactory() : this._(const CountryJey._());
}

/// A class that represents the Jersey country.
class CountryJey extends WorldCountry {
  /// {@template sealed_world.country_jey_constructor}
  /// Creates a instance of [CountryJey] (Jersey country).
  ///
  /// ISO 3166-1 Alpha-3 code: `JEY`, ISO 3166-1 Alpha-2 code: `JE`.
  /// {@endtemplate}
  const factory CountryJey() = _JeyFactory;

  const CountryJey._()
    : super(
        name: const CountryName(
          language: LangEng(),
          official: "Bailiwick of Jersey",
          common: "Jersey",
        ),
        tld: const [".je"],
        code: "JEY",
        codeNumeric: "832",
        codeShort: "JE",
        independent: false,
        unMember: false,
        idd: const Idd(root: 4, suffixes: [4]),
        altSpellings: const [
          "JE",
          "Bailiwick of Jersey",
          "Bailliage de Jersey",
          "Bailliage dé Jèrri",
        ],
        continent: const Europe(),
        subregion: const NorthernEurope(),
        latLng: const LatLng(49.25, -2.16666666),
        areaMetric: 116,
        emoji: "🇯🇪",
        maps: const Maps(
          googleMaps: "rXG8GZZtsqK92kTCA",
          openStreetMaps: "relation/367988",
        ),
        population: 103267,
        car: const Car(sign: "GBJ", isRightSide: false),
        timezones: const ["UTC+01:00"],
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
    capital: Capital("Saint Helier"),
    latLng: LatLng(49.18, -2.1),
  );
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(
      language: LangEng(),
      female: "Channel Islander",
      male: "Channel Islander",
    ),
    Demonyms(language: LangFra(), female: "Jersiaise", male: "Jersiais"),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(
      language: LangEng(),
      official: "Bailiwick of Jersey",
      common: "Jersey",
    ),
    CountryName(
      language: LangFra(),
      official: "Bailliage de Jersey",
      common: "Jersey",
    ),
  ];
  @override
  List<NaturalLanguage> get languages => const [LangEng(), LangFra()];
}
