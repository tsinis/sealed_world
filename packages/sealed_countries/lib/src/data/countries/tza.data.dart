// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/submodels/world_country.dart";

extension type const _TzaFactory._(CountryTza _) implements CountryTza {
  const _TzaFactory() : this._(const CountryTza._());
}

/// A class that represents the Tanzania country.
class CountryTza extends WorldCountry {
  /// {@template sealed_world.country_tza_constructor}
  /// Creates a instance of [CountryTza] (Tanzania country).
  ///
  /// ISO 3166-1 Alpha-3 code: `TZA`, ISO 3166-1 Alpha-2 code: `TZ`.
  /// {@endtemplate}
  const factory CountryTza() = _TzaFactory;

  const CountryTza._()
    : super._(
        name: const CountryName(
          language: LangEng(),
          official: "United Republic of Tanzania",
          common: "Tanzania",
        ),
        tld: const [".tz"],
        code: "TZA",
        codeNumeric: "834",
        codeShort: "TZ",
        cioc: "TAN",
        idd: const Idd(root: 2, suffixes: [55]),
        altSpellings: const [
          "TZ",
          "Tanzania, United Republic of",
          "United Republic of Tanzania",
          "Jamhuri ya Muungano wa Tanzania",
        ],
        continent: const Africa(),
        subregion: const EasternAfrica(),
        latLng: const LatLng(-6, 35),
        bordersCodes: const [
          "Bdi",
          "Cod",
          "Ken",
          "Mwi",
          "Moz",
          "Rwa",
          "Uga",
          "Zmb",
        ],
        areaMetric: 945087,
        emoji: "🇹🇿",
        maps: const Maps(
          googleMaps: "NWYMqZYXte4zGZ2Q8",
          openStreetMaps: "relation/195270",
        ),
        population: 59734213,
        gini: const Gini(year: 2017, coefficient: 40.5),
        fifa: "TAN",
        car: const Car(sign: "EAT", isRightSide: false),
        timezones: const ["UTC+03:00"],
      );
  @override
  List<FiatCurrency> get currencies => const [FiatTzs()];
  @override
  CapitalInfo get capitalInfo => const CapitalInfo(
    capital: Capital("Dodoma"),
    latLng: LatLng(-6.16, 35.75),
  );
  @override
  List<RegionalBloc> get regionalBlocs => const [BlocAU()];
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(language: LangEng(), female: "Tanzanian", male: "Tanzanian"),
    Demonyms(language: LangFra(), female: "Tanzanienne", male: "Tanzanien"),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(
      language: LangEng(),
      official: "United Republic of Tanzania",
      common: "Tanzania",
    ),
    CountryName(
      language: LangSwa(),
      official: "Jamhuri ya Muungano wa Tanzania",
      common: "Tanzania",
    ),
  ];
  @override
  List<NaturalLanguage> get languages => const [LangEng(), LangSwa()];
}
