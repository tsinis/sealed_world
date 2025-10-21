// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/country.dart";

/// A class that represents the the Nauru country.
class CountryNru extends WorldCountry {
  /// {@template sealed_world.countries_nru_constructor}}
  /// Creates a instance of [CountryNru] (Nauru country).
  ///
  /// ISO 3166-1 Alpha-3 code: `NRU`, ISO 3166-1 Alpha-2 code: `NR`.
  /// {@endtemplate}
  const factory CountryNru() = _NruFactory;

  const CountryNru._()
    : super(
        name: const CountryName(
          language: LangEng(),
          official: "Republic of Nauru",
          common: "Nauru",
        ),
        tld: const [".nr"],
        code: "NRU",
        codeNumeric: "520",
        codeShort: "NR",
        cioc: "NRU",
        idd: const Idd(root: 6, suffixes: [74]),
        altSpellings: const [
          "NR",
          "Naoero",
          "Pleasant Island",
          "Republic of Nauru",
          "Ripublik Naoero",
        ],
        continent: const Oceania(),
        subregion: const Micronesia(),
        latLng: const LatLng(-0.53333333, 166.91666666),
        areaMetric: 21,
        emoji: "🇳🇷",
        maps: const Maps(
          googleMaps: "kyAGw6XEJgjSMsTK7",
          openStreetMaps: "relation/571804",
        ),
        population: 10834,
        gini: const Gini(year: 2012, coefficient: 34.8),
        car: const Car(sign: "NAU", isRightSide: false),
        timezones: const ["UTC+12:00"],
      );
  @override
  List<FiatCurrency> get currencies => const [FiatAud()];
  @override
  CapitalInfo get capitalInfo => const CapitalInfo(
    capital: Capital("Yaren"),
    latLng: LatLng(-0.55, 166.92),
  );
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(language: LangEng(), female: "Nauruan", male: "Nauruan"),
    Demonyms(language: LangFra(), female: "Nauruane", male: "Nauruan"),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(
      language: LangEng(),
      official: "Republic of Nauru",
      common: "Nauru",
    ),
    CountryName(
      language: LangNau(),
      official: "Republic of Nauru",
      common: "Nauru",
    ),
  ];
  @override
  List<NaturalLanguage> get languages => const [LangEng(), LangNau()];
}

extension type const _NruFactory._(CountryNru _) implements CountryNru {
  const _NruFactory() : this._(const CountryNru._());
}
