// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/submodels/world_country.dart";

extension type const _TcaFactory._(CountryTca _) implements CountryTca {
  const _TcaFactory() : this._(const CountryTca._());
}

/// A class that represents the Turks and Caicos Islands country.
class CountryTca extends WorldCountry {
  /// {@template sealed_world.country_tca_constructor}
  /// Creates a instance of [CountryTca] (Turks and Caicos Islands country).
  ///
  /// ISO 3166-1 Alpha-3 code: `TCA`, ISO 3166-1 Alpha-2 code: `TC`.
  /// {@endtemplate}
  const factory CountryTca() = _TcaFactory;

  const CountryTca._()
    : super._(
        name: const CountryName(
          language: LangEng(),
          official: "Turks and Caicos Islands",
          common: "Turks and Caicos Islands",
        ),
        tld: const [".tc"],
        code: "TCA",
        codeNumeric: "796",
        codeShort: "TC",
        independent: false,
        unMember: false,
        idd: const Idd(root: 1, suffixes: [649]),
        altSpellings: const ["TC"],
        continent: const Americas(),
        subregion: const Caribbean(),
        latLng: const LatLng(21.75, -71.58333333),
        areaMetric: 948,
        emoji: "🇹🇨",
        maps: const Maps(
          googleMaps: "R8VUDQfwZiFtvmyn8",
          openStreetMaps: "relation/547479",
        ),
        population: 38718,
        fifa: "TCA",
        car: const Car(sign: "GB", isRightSide: false),
        timezones: const ["UTC-04:00"],
        hasCoatOfArms: false,
        postalCode: const PostalCode(
          format: "TKCA 1ZZ",
          regExpPattern: r"^(TKCA 1ZZ)$",
        ),
      );
  @override
  List<FiatCurrency> get currencies => const [FiatUsd()];
  @override
  CapitalInfo get capitalInfo => const CapitalInfo(
    capital: Capital("Cockburn Town"),
    latLng: LatLng(21.46, -71.14),
  );
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(
      language: LangEng(),
      female: "Turks and Caicos Islander",
      male: "Turks and Caicos Islander",
    ),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(
      language: LangEng(),
      official: "Turks and Caicos Islands",
      common: "Turks and Caicos Islands",
    ),
  ];
  @override
  List<NaturalLanguage> get languages => const [LangEng()];
}
