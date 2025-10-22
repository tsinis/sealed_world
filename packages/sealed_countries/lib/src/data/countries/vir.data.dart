// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/country.dart";

extension type const _VirFactory._(CountryVir _) implements CountryVir {
  const _VirFactory() : this._(const CountryVir._());
}

/// A class that represents the the United States Virgin Islands country.
class CountryVir extends WorldCountry {
  /// {@template sealed_world.country_vir_constructor}
  /// Creates a instance of [CountryVir] (United States Virgin Islands country).
  ///
  /// ISO 3166-1 Alpha-3 code: `VIR`, ISO 3166-1 Alpha-2 code: `VI`.
  /// {@endtemplate}
  const factory CountryVir() = _VirFactory;

  const CountryVir._()
    : super(
        name: const CountryName(
          language: LangEng(),
          official: "Virgin Islands of the United States",
          common: "United States Virgin Islands",
        ),
        tld: const [".vi"],
        code: "VIR",
        codeNumeric: "850",
        codeShort: "VI",
        cioc: "ISV",
        independent: false,
        unMember: false,
        idd: const Idd(root: 1, suffixes: [340]),
        altSpellings: const ["VI", "Virgin Islands, U.S."],
        continent: const Americas(),
        subregion: const Caribbean(),
        latLng: const LatLng(18.35, -64.933333),
        areaMetric: 347,
        emoji: "🇻🇮",
        maps: const Maps(
          googleMaps: "mBfreywj8dor6q4m9",
          openStreetMaps: "relation/286898",
        ),
        population: 106290,
        fifa: "VIR",
        car: const Car(sign: "USA"),
        timezones: const ["UTC-04:00"],
        hasCoatOfArms: false,
      );
  @override
  List<FiatCurrency> get currencies => const [FiatUsd()];
  @override
  CapitalInfo get capitalInfo => const CapitalInfo(
    capital: Capital("Charlotte Amalie"),
    latLng: LatLng(18.35, -64.93),
  );
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(
      language: LangEng(),
      female: "Virgin Islander",
      male: "Virgin Islander",
    ),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(
      language: LangEng(),
      official: "Virgin Islands of the United States",
      common: "United States Virgin Islands",
    ),
  ];
  @override
  List<NaturalLanguage> get languages => const [LangEng()];
}
