// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/submodels/world_country.dart";

extension type const _TonFactory._(CountryTon _) implements CountryTon {
  const _TonFactory() : this._(const CountryTon._());
}

/// A class that represents the Tonga country.
class CountryTon extends WorldCountry {
  /// {@template sealed_world.country_ton_constructor}
  /// Creates a instance of [CountryTon] (Tonga country).
  ///
  /// ISO 3166-1 Alpha-3 code: `TON`, ISO 3166-1 Alpha-2 code: `TO`.
  /// {@endtemplate}
  const factory CountryTon() = _TonFactory;

  const CountryTon._()
    : super._(
        name: const CountryName(
          language: LangEng(),
          official: "Kingdom of Tonga",
          common: "Tonga",
        ),
        tld: const [".to"],
        code: "TON",
        codeNumeric: "776",
        codeShort: "TO",
        cioc: "TGA",
        idd: const Idd(root: 6, suffixes: [76]),
        altSpellings: const ["TO"],
        continent: const Oceania(),
        subregion: const Polynesia(),
        latLng: const LatLng(-20, -175),
        areaMetric: 747,
        emoji: "🇹🇴",
        maps: const Maps(
          googleMaps: "p5YALBY2QdEzswRo7",
          openStreetMaps: "relation/2186665",
        ),
        population: 105697,
        gini: const Gini(year: 2015, coefficient: 37.6),
        fifa: "TGA",
        car: const Car(sign: "TO", isRightSide: false),
        timezones: const ["UTC+13:00"],
      );
  @override
  List<FiatCurrency> get currencies => const [FiatTop()];
  @override
  CapitalInfo get capitalInfo => const CapitalInfo(
    capital: Capital("Nuku'alofa"),
    latLng: LatLng(-21.13, -175.2),
  );
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(language: LangEng(), female: "Tongan", male: "Tongan"),
    Demonyms(language: LangFra(), female: "Tonguienne", male: "Tonguien"),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(
      language: LangEng(),
      official: "Kingdom of Tonga",
      common: "Tonga",
    ),
    CountryName(
      language: LangTon(),
      official: "Kingdom of Tonga",
      common: "Tonga",
    ),
  ];
  @override
  List<NaturalLanguage> get languages => const [LangEng(), LangTon()];
}
