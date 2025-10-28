// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/country.dart";

extension type const _DjiFactory._(CountryDji _) implements CountryDji {
  const _DjiFactory() : this._(const CountryDji._());
}

/// A class that represents the Djibouti country.
class CountryDji extends WorldCountry {
  /// {@template sealed_world.country_dji_constructor}
  /// Creates a instance of [CountryDji] (Djibouti country).
  ///
  /// ISO 3166-1 Alpha-3 code: `DJI`, ISO 3166-1 Alpha-2 code: `DJ`.
  /// {@endtemplate}
  const factory CountryDji() = _DjiFactory;

  const CountryDji._()
    : super(
        name: const CountryName(
          language: LangEng(),
          official: "Republic of Djibouti",
          common: "Djibouti",
        ),
        tld: const [".dj"],
        code: "DJI",
        codeNumeric: "262",
        codeShort: "DJ",
        cioc: "DJI",
        idd: const Idd(root: 2, suffixes: [53]),
        altSpellings: const [
          "DJ",
          "Jabuuti",
          "Gabuuti",
          "Republic of Djibouti",
          "République de Djibouti",
          "Gabuutih Ummuuno",
          "Jamhuuriyadda Jabuuti",
        ],
        continent: const Africa(),
        subregion: const EasternAfrica(),
        latLng: const LatLng(11.5, 43),
        bordersCodes: const ["Eri", "Eth", "Som"],
        areaMetric: 23200,
        emoji: "🇩🇯",
        maps: const Maps(
          googleMaps: "V1HWfzN3bS1kwf4C6",
          openStreetMaps: "relation/192801",
        ),
        population: 1066809,
        gini: const Gini(year: 2017, coefficient: 41.6),
        fifa: "DJI",
        car: const Car(sign: "DJI"),
        timezones: const ["UTC+03:00"],
      );
  @override
  List<FiatCurrency> get currencies => const [FiatDjf()];
  @override
  CapitalInfo get capitalInfo => const CapitalInfo(
    capital: Capital("Djibouti"),
    latLng: LatLng(11.58, 43.15),
  );
  @override
  List<RegionalBloc> get regionalBlocs => const [BlocAU(), BlocAL()];
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(language: LangEng(), female: "Djiboutian", male: "Djiboutian"),
    Demonyms(language: LangFra(), female: "Djiboutienne", male: "Djiboutien"),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(
      language: LangAra(),
      official: "جمهورية جيبوتي",
      common: "جيبوتي‎",
    ),
    CountryName(
      language: LangFra(),
      official: "République de Djibouti",
      common: "Djibouti",
    ),
  ];
  @override
  List<NaturalLanguage> get languages => const [LangAra(), LangFra()];
}
