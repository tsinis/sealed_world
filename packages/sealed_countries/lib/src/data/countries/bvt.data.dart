// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/submodels/world_country.dart";

extension type const _BvtFactory._(CountryBvt _) implements CountryBvt {
  const _BvtFactory() : this._(const CountryBvt._());
}

/// A class that represents the Bouvet Island country.
class CountryBvt extends WorldCountry {
  /// {@template sealed_world.country_bvt_constructor}
  /// Creates a instance of [CountryBvt] (Bouvet Island country).
  ///
  /// ISO 3166-1 Alpha-3 code: `BVT`, ISO 3166-1 Alpha-2 code: `BV`.
  /// {@endtemplate}
  const factory CountryBvt() = _BvtFactory;

  const CountryBvt._()
    : super._(
        name: const CountryName(
          language: LangEng(),
          official: "Bouvet Island",
          common: "Bouvet Island",
        ),
        tld: const [".bv"],
        code: "BVT",
        codeNumeric: "074",
        codeShort: "BV",
        independent: false,
        unMember: false,
        idd: const Idd(root: 4, suffixes: [7]),
        altSpellings: const ["BV", "Bouvetøya", "Bouvet-øya"],
        continent: const Antarctica(),
        latLng: const LatLng(-54.4208, 3.3464),
        areaMetric: 49,
        emoji: "🇧🇻",
        maps: const Maps(
          googleMaps: "7WRQAEKZb4uK36yi9",
          openStreetMaps: "way/174996681",
        ),
        population: 0,
        car: const Car(),
        timezones: const ["UTC+01:00"],
        hasCoatOfArms: false,
      );
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(
      language: LangEng(),
      female: "Bouvet Islander",
      male: "Bouvet Islander",
    ),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(
      language: LangNor(),
      official: "Bouvetøya",
      common: "Bouvetøya",
    ),
  ];
  @override
  List<NaturalLanguage> get languages => const [LangNor()];
}
