// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/submodels/world_country.dart";

extension type const _FsmFactory._(CountryFsm _) implements CountryFsm {
  const _FsmFactory() : this._(const CountryFsm._());
}

/// A class that represents the Micronesia country.
class CountryFsm extends WorldCountry {
  /// {@template sealed_world.country_fsm_constructor}
  /// Creates a instance of [CountryFsm] (Micronesia country).
  ///
  /// ISO 3166-1 Alpha-3 code: `FSM`, ISO 3166-1 Alpha-2 code: `FM`.
  /// {@endtemplate}
  const factory CountryFsm() = _FsmFactory;

  const CountryFsm._()
    : super._(
        name: const CountryName(
          language: LangEng(),
          official: "Federated States of Micronesia",
          common: "Micronesia",
        ),
        tld: const [".fm"],
        code: "FSM",
        codeNumeric: "583",
        codeShort: "FM",
        cioc: "FSM",
        idd: const Idd(root: 6, suffixes: [91]),
        altSpellings: const [
          "FM",
          "Federated States of Micronesia",
          "Micronesia, Federated States of",
        ],
        continent: const Oceania(),
        subregion: const Micronesia(),
        latLng: const LatLng(6.91666666, 158.25),
        areaMetric: 702,
        emoji: "🇫🇲",
        maps: const Maps(
          googleMaps: "LLcnofC5LxZsJXTo8",
          openStreetMaps: "relation/571802",
        ),
        population: 104468,
        gini: const Gini(year: 2013, coefficient: 40.1),
        car: const Car(sign: "FSM"),
        timezones: const ["UTC+10:00", "UTC+11:00"],
        postalCode: const PostalCode(),
      );
  @override
  List<FiatCurrency> get currencies => const [FiatUsd()];
  @override
  CapitalInfo get capitalInfo => const CapitalInfo(
    capital: Capital("Palikir"),
    latLng: LatLng(6.92, 158.15),
  );
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(language: LangEng(), female: "Micronesian", male: "Micronesian"),
    Demonyms(language: LangFra(), female: "Micronésienne", male: "Micronésien"),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(
      language: LangEng(),
      official: "Federated States of Micronesia",
      common: "Micronesia",
    ),
  ];
  @override
  List<NaturalLanguage> get languages => const [LangEng()];
}
