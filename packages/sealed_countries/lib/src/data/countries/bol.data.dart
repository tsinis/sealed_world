// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/country.dart";

extension type const _BolFactory._(CountryBol _) implements CountryBol {
  const _BolFactory() : this._(const CountryBol._());
}

/// A class that represents the Bolivia country.
class CountryBol extends WorldCountry {
  /// {@template sealed_world.country_bol_constructor}
  /// Creates a instance of [CountryBol] (Bolivia country).
  ///
  /// ISO 3166-1 Alpha-3 code: `BOL`, ISO 3166-1 Alpha-2 code: `BO`.
  /// {@endtemplate}
  const factory CountryBol() = _BolFactory;

  const CountryBol._()
    : super(
        name: const CountryName(
          language: LangEng(),
          official: "Plurinational State of Bolivia",
          common: "Bolivia",
        ),
        tld: const [".bo"],
        code: "BOL",
        codeNumeric: "068",
        codeShort: "BO",
        cioc: "BOL",
        idd: const Idd(root: 5, suffixes: [91]),
        altSpellings: const [
          "BO",
          "Buliwya",
          "Wuliwya",
          "Bolivia, Plurinational State of",
          "Plurinational State of Bolivia",
          "Estado Plurinacional de Bolivia",
          "Buliwya Mamallaqta",
          "Wuliwya Suyu",
          "Tetã Volívia",
        ],
        continent: const Americas(),
        subregion: const SouthAmerica(),
        latLng: const LatLng(-17, -65),
        landlocked: true,
        bordersCodes: const ["Arg", "Bra", "Chl", "Pry", "Per"],
        areaMetric: 1098581,
        emoji: "🇧🇴",
        maps: const Maps(
          googleMaps: "9DfnyfbxNM2g5U9b9",
          openStreetMaps: "relation/252645",
        ),
        population: 11312620,
        gini: const Gini(year: 2019, coefficient: 41.6),
        fifa: "BOL",
        car: const Car(sign: "BOL"),
        timezones: const ["UTC-04:00"],
      );
  @override
  List<FiatCurrency> get currencies => const [FiatBob()];
  @override
  CapitalInfo get capitalInfo => const CapitalInfo(
    capital: Capital("Sucre"),
    latLng: LatLng(-19.02, -65.26),
  );
  @override
  List<RegionalBloc> get regionalBlocs => const [BlocUSAN()];
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(language: LangEng(), female: "Bolivian", male: "Bolivian"),
    Demonyms(language: LangFra(), female: "Bolivienne", male: "Bolivien"),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(
      language: LangAym(),
      official: "Wuliwya Suyu",
      common: "Wuliwya",
    ),
    CountryName(
      language: LangGrn(),
      official: "Tetã Volívia",
      common: "Volívia",
    ),
    CountryName(
      language: LangQue(),
      official: "Buliwya Mamallaqta",
      common: "Buliwya",
    ),
    CountryName(
      language: LangSpa(),
      official: "Estado Plurinacional de Bolivia",
      common: "Bolivia",
    ),
  ];
  @override
  List<NaturalLanguage> get languages => const [
    LangAym(),
    LangGrn(),
    LangQue(),
    LangSpa(),
  ];
}
