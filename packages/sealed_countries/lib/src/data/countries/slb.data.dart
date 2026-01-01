// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/submodels/world_country.dart";

extension type const _SlbFactory._(CountrySlb _) implements CountrySlb {
  const _SlbFactory() : this._(const CountrySlb._());
}

/// A class that represents the Solomon Islands country.
class CountrySlb extends WorldCountry {
  /// {@template sealed_world.country_slb_constructor}
  /// Creates a instance of [CountrySlb] (Solomon Islands country).
  ///
  /// ISO 3166-1 Alpha-3 code: `SLB`, ISO 3166-1 Alpha-2 code: `SB`.
  /// {@endtemplate}
  const factory CountrySlb() = _SlbFactory;

  const CountrySlb._()
    : super._(
        name: const CountryName(
          language: LangEng(),
          official: "Solomon Islands",
          common: "Solomon Islands",
        ),
        tld: const [".sb"],
        code: "SLB",
        codeNumeric: "090",
        codeShort: "SB",
        cioc: "SOL",
        idd: const Idd(root: 6, suffixes: [77]),
        altSpellings: const ["SB"],
        continent: const Oceania(),
        subregion: const Melanesia(),
        latLng: const LatLng(-8, 159),
        areaMetric: 28896,
        emoji: "🇸🇧",
        maps: const Maps(
          googleMaps: "JbPkx86Ywjv8C1n8A",
          openStreetMaps: "relation/1857436",
        ),
        population: 686878,
        gini: const Gini(year: 2012, coefficient: 37.1),
        fifa: "SOL",
        car: const Car(sign: "SOL", isRightSide: false),
        timezones: const ["UTC+11:00"],
      );
  @override
  List<FiatCurrency> get currencies => const [FiatSbd()];
  @override
  CapitalInfo get capitalInfo => const CapitalInfo(
    capital: Capital("Honiara"),
    latLng: LatLng(-9.43, 159.95),
  );
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(
      language: LangEng(),
      female: "Solomon Islander",
      male: "Solomon Islander",
    ),
    Demonyms(language: LangFra(), female: "Salomonienne", male: "Salomonien"),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(
      language: LangEng(),
      official: "Solomon Islands",
      common: "Solomon Islands",
    ),
  ];
  @override
  List<NaturalLanguage> get languages => const [LangEng()];
}
