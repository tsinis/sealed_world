// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/country.dart";

extension type const _WsmFactory._(CountryWsm _) implements CountryWsm {
  const _WsmFactory() : this._(const CountryWsm._());
}

/// A class that represents the the Samoa country.
class CountryWsm extends WorldCountry {
  /// {@template sealed_world.country_wsm_constructor}
  /// Creates a instance of [CountryWsm] (Samoa country).
  ///
  /// ISO 3166-1 Alpha-3 code: `WSM`, ISO 3166-1 Alpha-2 code: `WS`.
  /// {@endtemplate}
  const factory CountryWsm() = _WsmFactory;

  const CountryWsm._()
    : super(
        name: const CountryName(
          language: LangEng(),
          official: "Independent State of Samoa",
          common: "Samoa",
        ),
        tld: const [".ws"],
        code: "WSM",
        codeNumeric: "882",
        codeShort: "WS",
        cioc: "SAM",
        idd: const Idd(root: 6, suffixes: [85]),
        altSpellings: const [
          "WS",
          "Independent State of Samoa",
          "Malo Saʻoloto Tutoʻatasi o Sāmoa",
        ],
        continent: const Oceania(),
        subregion: const Polynesia(),
        latLng: const LatLng(-13.58333333, -172.33333333),
        areaMetric: 2842,
        emoji: "🇼🇸",
        maps: const Maps(
          googleMaps: "CFC9fEFP9cfkYUBF9",
          openStreetMaps: "relation/1872673",
        ),
        population: 198410,
        gini: const Gini(year: 2013, coefficient: 38.7),
        fifa: "SAM",
        car: const Car(sign: "WS", isRightSide: false),
        timezones: const ["UTC+13:00"],
      );
  @override
  List<FiatCurrency> get currencies => const [FiatWst()];
  @override
  CapitalInfo get capitalInfo => const CapitalInfo(
    capital: Capital("Apia"),
    latLng: LatLng(-13.82, -171.77),
  );
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(language: LangEng(), female: "Samoan", male: "Samoan"),
    Demonyms(language: LangFra(), female: "Samoane", male: "Samoan"),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(
      language: LangEng(),
      official: "Independent State of Samoa",
      common: "Samoa",
    ),
    CountryName(
      language: LangSmo(),
      official: "Malo Saʻoloto Tutoʻatasi o Sāmoa",
      common: "Sāmoa",
    ),
  ];
  @override
  List<NaturalLanguage> get languages => const [LangEng(), LangSmo()];
}
