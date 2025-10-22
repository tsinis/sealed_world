// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/country.dart";

extension type const _MusFactory._(CountryMus _) implements CountryMus {
  const _MusFactory() : this._(const CountryMus._());
}

/// A class that represents the Mauritius country.
class CountryMus extends WorldCountry {
  /// {@template sealed_world.country_mus_constructor}
  /// Creates a instance of [CountryMus] (Mauritius country).
  ///
  /// ISO 3166-1 Alpha-3 code: `MUS`, ISO 3166-1 Alpha-2 code: `MU`.
  /// {@endtemplate}
  const factory CountryMus() = _MusFactory;

  const CountryMus._()
    : super(
        name: const CountryName(
          language: LangEng(),
          official: "Republic of Mauritius",
          common: "Mauritius",
        ),
        tld: const [".mu"],
        code: "MUS",
        codeNumeric: "480",
        codeShort: "MU",
        cioc: "MRI",
        idd: const Idd(root: 2, suffixes: [30]),
        altSpellings: const [
          "MU",
          "Republic of Mauritius",
          "République de Maurice",
        ],
        continent: const Africa(),
        subregion: const EasternAfrica(),
        latLng: const LatLng(-20.28333333, 57.55),
        areaMetric: 2040,
        emoji: "🇲🇺",
        maps: const Maps(
          googleMaps: "PpKtZ4W3tir5iGrz7",
          openStreetMaps: "relation/535828",
        ),
        population: 1265740,
        gini: const Gini(year: 2017, coefficient: 36.8),
        fifa: "MRI",
        car: const Car(sign: "MS", isRightSide: false),
        timezones: const ["UTC+04:00"],
      );
  @override
  List<FiatCurrency> get currencies => const [FiatMur()];
  @override
  CapitalInfo get capitalInfo => const CapitalInfo(
    capital: Capital("Port Louis"),
    latLng: LatLng(-20.15, 57.48),
  );
  @override
  List<RegionalBloc> get regionalBlocs => const [BlocAU()];
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(language: LangEng(), female: "Mauritian", male: "Mauritian"),
    Demonyms(language: LangFra(), female: "Mauricienne", male: "Mauricien"),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(
      language: LangEng(),
      official: "Republic of Mauritius",
      common: "Mauritius",
    ),
    CountryName(
      language: LangFra(),
      official: "République de Maurice",
      common: "Maurice",
    ),
  ];
  @override
  List<NaturalLanguage> get languages => const [LangEng(), LangFra()];
}
