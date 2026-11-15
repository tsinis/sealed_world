// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/submodels/world_country.dart";

extension type const _StpFactory._(CountryStp _) implements CountryStp {
  const new() : this._(const CountryStp._());
}

/// A class that represents the São Tomé and Príncipe country.
class CountryStp extends WorldCountry {
  /// {@template sealed_world.country_stp_constructor}
  /// Creates a instance of [CountryStp] (São Tomé and Príncipe country).
  ///
  /// ISO 3166-1 Alpha-3 code: `STP`, ISO 3166-1 Alpha-2 code: `ST`.
  /// {@endtemplate}
  const factory() = _StpFactory;

  const new _()
    : super._(
        name: const CountryName(
          language: LangEng(),
          official: "Democratic Republic of São Tomé and Príncipe",
          common: "São Tomé and Príncipe",
        ),
        tld: const [".st"],
        code: "STP",
        codeNumeric: "678",
        codeShort: "ST",
        cioc: "STP",
        idd: const Idd(root: 2, suffixes: [39]),
        altSpellings: const [
          "ST",
          "Democratic Republic of São Tomé and Príncipe",
          "Sao Tome and Principe",
          "República Democrática de São Tomé e Príncipe",
        ],
        continent: const Africa(),
        subregion: const MiddleAfrica(),
        latLng: const LatLng(1, 7),
        areaMetric: 964,
        emoji: "🇸🇹",
        maps: const Maps(
          googleMaps: "9EUppm13RtPX9oF46",
          openStreetMaps: "relation/535880",
        ),
        population: 219161,
        gini: const Gini(year: 2017, coefficient: 56.3),
        fifa: "STP",
        car: const Car(sign: "STP"),
        timezones: const ["UTC+00:00"],
      );
  @override
  List<FiatCurrency> get currencies => const [FiatStn()];
  @override
  CapitalInfo get capitalInfo => const CapitalInfo(
    capital: Capital("São Tomé"),
    latLng: LatLng(0.34, 6.73),
  );
  @override
  List<RegionalBloc> get regionalBlocs => const [BlocAU()];
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(language: LangEng(), female: "Sao Tomean", male: "Sao Tomean"),
    Demonyms(language: LangFra(), female: "Santoméenne", male: "Santoméen"),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(
      language: LangPor(),
      official: "República Democrática do São Tomé e Príncipe",
      common: "São Tomé e Príncipe",
    ),
  ];
  @override
  List<NaturalLanguage> get languages => const [LangPor()];
}
