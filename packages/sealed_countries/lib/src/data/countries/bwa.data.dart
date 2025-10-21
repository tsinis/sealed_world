// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/country.dart";

/// A class that represents the the Botswana country.
class CountryBwa extends WorldCountry {
  /// {@template sealed_world.countries_bwa_constructor}}
  /// Creates a instance of [CountryBwa] (Botswana country).
  ///
  /// ISO 3166-1 Alpha-3 code: `BWA`, ISO 3166-1 Alpha-2 code: `BW`.
  /// {@endtemplate}
  const factory CountryBwa() = _BwaFactory;

  const CountryBwa._()
    : super(
        name: const CountryName(
          language: LangEng(),
          official: "Republic of Botswana",
          common: "Botswana",
        ),
        tld: const [".bw"],
        code: "BWA",
        codeNumeric: "072",
        codeShort: "BW",
        cioc: "BOT",
        idd: const Idd(root: 2, suffixes: [67]),
        altSpellings: const [
          "BW",
          "Republic of Botswana",
          "Lefatshe la Botswana",
        ],
        continent: const Africa(),
        subregion: const SouthernAfrica(),
        latLng: const LatLng(-22, 24),
        landlocked: true,
        bordersCodes: const ["Nam", "Zaf", "Zmb", "Zwe"],
        areaMetric: 582000,
        emoji: "🇧🇼",
        maps: const Maps(
          googleMaps: "E364KeLy6N4JwxwQ8",
          openStreetMaps: "relation/1889339",
        ),
        population: 2359609,
        gini: const Gini(year: 2015, coefficient: 53.3),
        fifa: "BOT",
        car: const Car(sign: "BW", isRightSide: false),
        timezones: const ["UTC+02:00"],
      );
  @override
  List<FiatCurrency> get currencies => const [FiatBwp()];
  @override
  CapitalInfo get capitalInfo => const CapitalInfo(
    capital: Capital("Gaborone"),
    latLng: LatLng(-24.63, 25.9),
  );
  @override
  List<RegionalBloc> get regionalBlocs => const [BlocAU()];
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(language: LangEng(), female: "Motswana", male: "Motswana"),
    Demonyms(language: LangFra(), female: "Botswanaise", male: "Botswanais"),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(
      language: LangEng(),
      official: "Republic of Botswana",
      common: "Botswana",
    ),
    CountryName(
      language: LangTsn(),
      official: "Lefatshe la Botswana",
      common: "Botswana",
    ),
  ];
  @override
  List<NaturalLanguage> get languages => const [LangEng(), LangTsn()];
}

extension type const _BwaFactory._(CountryBwa _) implements CountryBwa {
  const _BwaFactory() : this._(const CountryBwa._());
}
