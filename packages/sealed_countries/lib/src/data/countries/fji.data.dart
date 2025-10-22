// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/country.dart";

extension type const _FjiFactory._(CountryFji _) implements CountryFji {
  const _FjiFactory() : this._(const CountryFji._());
}

/// A class that represents the the Fiji country.
class CountryFji extends WorldCountry {
  /// {@template sealed_world.country_fji_constructor}
  /// Creates a instance of [CountryFji] (Fiji country).
  ///
  /// ISO 3166-1 Alpha-3 code: `FJI`, ISO 3166-1 Alpha-2 code: `FJ`.
  /// {@endtemplate}
  const factory CountryFji() = _FjiFactory;

  const CountryFji._()
    : super(
        name: const CountryName(
          language: LangEng(),
          official: "Republic of Fiji",
          common: "Fiji",
        ),
        tld: const [".fj"],
        code: "FJI",
        codeNumeric: "242",
        codeShort: "FJ",
        cioc: "FIJ",
        idd: const Idd(root: 6, suffixes: [79]),
        altSpellings: const [
          "FJ",
          "Viti",
          "Republic of Fiji",
          "Matanitu ko Viti",
          "Fijī Gaṇarājya",
        ],
        continent: const Oceania(),
        subregion: const Melanesia(),
        latLng: const LatLng(-17.7134, 178.065),
        areaMetric: 18272,
        emoji: "🇫🇯",
        maps: const Maps(
          googleMaps: "r9fhDqoLZdg1zmE99",
          openStreetMaps: "relation/571747",
        ),
        population: 926276,
        gini: const Gini(year: 2019, coefficient: 30.7),
        fifa: "FIJ",
        car: const Car(sign: "FJI", isRightSide: false),
        timezones: const ["UTC+12:00"],
      );
  @override
  List<FiatCurrency> get currencies => const [FiatFjd()];
  @override
  CapitalInfo get capitalInfo => const CapitalInfo(
    capital: Capital("Suva"),
    latLng: LatLng(-18.13, 178.42),
  );
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(language: LangEng(), female: "Fijian", male: "Fijian"),
    Demonyms(language: LangFra(), female: "Fidjienne", male: "Fidjien"),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(
      language: LangEng(),
      official: "Republic of Fiji",
      common: "Fiji",
    ),
    CountryName(
      language: LangFij(),
      official: "Matanitu Tugalala o Viti",
      common: "Viti",
    ),
  ];
  @override
  List<NaturalLanguage> get languages => const [LangEng(), LangFij()];
}
