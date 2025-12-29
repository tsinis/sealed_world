// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/submodels/world_country.dart";

extension type const _CckFactory._(CountryCck _) implements CountryCck {
  const _CckFactory() : this._(const CountryCck._());
}

/// A class that represents the Cocos (Keeling) Islands country.
class CountryCck extends WorldCountry {
  /// {@template sealed_world.country_cck_constructor}
  /// Creates a instance of [CountryCck] (Cocos (Keeling) Islands country).
  ///
  /// ISO 3166-1 Alpha-3 code: `CCK`, ISO 3166-1 Alpha-2 code: `CC`.
  /// {@endtemplate}
  const factory CountryCck() = _CckFactory;

  const CountryCck._()
    : super._(
        name: const CountryName(
          language: LangEng(),
          official: "Territory of the Cocos (Keeling) Islands",
          common: "Cocos (Keeling) Islands",
        ),
        tld: const [".cc"],
        code: "CCK",
        codeNumeric: "166",
        codeShort: "CC",
        independent: false,
        unMember: false,
        idd: const Idd(root: 6, suffixes: [1]),
        altSpellings: const ["CC", "Keeling Islands", "Cocos Islands"],
        continent: const Oceania(),
        subregion: const AustraliaAndNewZealand(),
        latLng: const LatLng(-12.1642, 96.871),
        areaMetric: 14,
        emoji: "🇨🇨",
        maps: const Maps(
          googleMaps: "3eCdKVpVfMcZyKcK6",
          openStreetMaps: "relation/82636",
        ),
        population: 544,
        car: const Car(sign: "AUS", isRightSide: false),
        timezones: const ["UTC+06:30"],
        hasCoatOfArms: false,
      );
  @override
  List<FiatCurrency> get currencies => const [FiatAud()];
  @override
  CapitalInfo get capitalInfo => const CapitalInfo(
    capital: Capital("West Island"),
    latLng: LatLng(-12.17, 96.83),
  );
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(
      language: LangEng(),
      female: "Cocos Islander",
      male: "Cocos Islander",
    ),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(
      language: LangEng(),
      official: "Territory of the Cocos (Keeling) Islands",
      common: "Cocos (Keeling) Islands",
    ),
  ];
  @override
  List<NaturalLanguage> get languages => const [LangEng()];
}
