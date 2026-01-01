// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/submodels/world_country.dart";

extension type const _UmiFactory._(CountryUmi _) implements CountryUmi {
  const _UmiFactory() : this._(const CountryUmi._());
}

/// A class that represents the United States Minor Outlying Islands country.
class CountryUmi extends WorldCountry {
  /// {@template sealed_world.country_umi_constructor}
  /// Creates a instance of [CountryUmi] (United States Minor Outlying Islands
  /// country).
  ///
  /// ISO 3166-1 Alpha-3 code: `UMI`, ISO 3166-1 Alpha-2 code: `UM`.
  /// {@endtemplate}
  const factory CountryUmi() = _UmiFactory;

  const CountryUmi._()
    : super._(
        name: const CountryName(
          language: LangEng(),
          official: "United States Minor Outlying Islands",
          common: "United States Minor Outlying Islands",
        ),
        tld: const [".us"],
        code: "UMI",
        codeNumeric: "581",
        codeShort: "UM",
        independent: false,
        unMember: false,
        idd: const Idd(root: 2, suffixes: [68]),
        altSpellings: const ["UM"],
        continent: const Americas(),
        subregion: const NorthAmerica(),
        latLng: const LatLng(19.3, 166.633333),
        areaMetric: 34.2,
        emoji: "🇺🇲",
        maps: const Maps(
          googleMaps: "hZKnrzgeK69dDyPF8",
          openStreetMaps: "relation/6430384",
        ),
        population: 300,
        car: const Car(),
        timezones: const ["UTC-11:00", "UTC-10:00", "UTC+12:00"],
        hasCoatOfArms: false,
      );
  @override
  List<FiatCurrency> get currencies => const [FiatUsd()];
  @override
  CapitalInfo get capitalInfo => const CapitalInfo(
    capital: Capital("Washington DC"),
    latLng: LatLng(38.9072, 77.0369),
  );
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(
      language: LangEng(),
      female: "American Islander",
      male: "American Islander",
    ),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(
      language: LangEng(),
      official: "United States Minor Outlying Islands",
      common: "United States Minor Outlying Islands",
    ),
  ];
  @override
  List<NaturalLanguage> get languages => const [LangEng()];
}
