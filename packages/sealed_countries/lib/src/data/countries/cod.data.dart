// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/country.dart";

extension type const _CodFactory._(CountryCod _) implements CountryCod {
  const _CodFactory() : this._(const CountryCod._());
}

/// A class that represents the the DR Congo country.
class CountryCod extends WorldCountry {
  /// {@template sealed_world.country_cod_constructor}
  /// Creates a instance of [CountryCod] (DR Congo country).
  ///
  /// ISO 3166-1 Alpha-3 code: `COD`, ISO 3166-1 Alpha-2 code: `CD`.
  /// {@endtemplate}
  const factory CountryCod() = _CodFactory;

  const CountryCod._()
    : super(
        name: const CountryName(
          language: LangEng(),
          official: "Democratic Republic of the Congo",
          common: "DR Congo",
        ),
        tld: const [".cd"],
        code: "COD",
        codeNumeric: "180",
        codeShort: "CD",
        cioc: "COD",
        idd: const Idd(root: 2, suffixes: [43]),
        altSpellings: const [
          "CD",
          "DR Congo",
          "Congo-Kinshasa",
          "Congo, the Democratic Republic of the",
          "DRC",
        ],
        continent: const Africa(),
        subregion: const MiddleAfrica(),
        latLng: const LatLng(0, 25),
        bordersCodes: const [
          "Ago",
          "Bdi",
          "Caf",
          "Cog",
          "Rwa",
          "Ssd",
          "Tza",
          "Uga",
          "Zmb",
        ],
        areaMetric: 2344858,
        emoji: "🇨🇩",
        maps: const Maps(
          googleMaps: "KfhNVn6VqdZXWu8n9",
          openStreetMaps: "relation/192795",
        ),
        population: 112832473,
        gini: const Gini(year: 2012, coefficient: 42.1),
        fifa: "COD",
        car: const Car(sign: "CGO"),
        timezones: const ["UTC+01:00", "UTC+02:00"],
      );
  @override
  List<FiatCurrency> get currencies => const [FiatCdf()];
  @override
  CapitalInfo get capitalInfo => const CapitalInfo(
    capital: Capital("Kinshasa"),
    latLng: LatLng(-4.32, 15.3),
  );
  @override
  List<RegionalBloc> get regionalBlocs => const [BlocAU()];
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(language: LangEng(), female: "Congolese", male: "Congolese"),
    Demonyms(language: LangFra(), female: "Congolaise", male: "Congolais"),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(
      language: LangFra(),
      official: "République démocratique du Congo",
      common: "RD Congo",
    ),
    CountryName(
      language: LangKon(),
      official: "Repubilika ya Kongo Demokratiki",
      common: "Repubilika ya Kongo Demokratiki",
    ),
    CountryName(
      language: LangLin(),
      official: "Republiki ya Kongó Demokratiki",
      common: "Republiki ya Kongó Demokratiki",
    ),
    CountryName(
      language: LangSwa(),
      official: "Jamhuri ya Kidemokrasia ya Kongo",
      common: "Jamhuri ya Kidemokrasia ya Kongo",
    ),
  ];
  @override
  List<NaturalLanguage> get languages => const [LangFra()];
}
