// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/country.dart";

/// A class that represents the the Ivory Coast country.
class CountryCiv extends WorldCountry {
  /// {@template sealed_world.countries_civ_constructor}}
  /// Creates a instance of [CountryCiv] (Ivory Coast country).
  ///
  /// ISO 3166-1 Alpha-3 code: `CIV`, ISO 3166-1 Alpha-2 code: `CI`.
  /// {@endtemplate}
  const factory CountryCiv() = _CivFactory;

  const CountryCiv._()
    : super(
        name: const CountryName(
          language: LangEng(),
          official: "Republic of Côte d'Ivoire",
          common: "Ivory Coast",
        ),
        tld: const [".ci"],
        code: "CIV",
        codeNumeric: "384",
        codeShort: "CI",
        cioc: "CIV",
        idd: const Idd(root: 2, suffixes: [25]),
        altSpellings: const [
          "CI",
          "Côte d'Ivoire",
          "Ivory Coast",
          "Republic of Côte d'Ivoire",
          "République de Côte d'Ivoire",
        ],
        continent: const Africa(),
        subregion: const WesternAfrica(),
        latLng: const LatLng(8, -5),
        bordersCodes: const ["Bfa", "Gha", "Gin", "Lbr", "Mli"],
        areaMetric: 322463,
        emoji: "🇨🇮",
        maps: const Maps(
          googleMaps: "wKsmN7f5qAeNtGjP6",
          openStreetMaps: "relation/192779",
        ),
        population: 29389150,
        gini: const Gini(year: 2015, coefficient: 41.5),
        fifa: "CIV",
        car: const Car(sign: "CI"),
        timezones: const ["UTC+00:00"],
      );
  @override
  List<FiatCurrency> get currencies => const [FiatXof()];
  @override
  CapitalInfo get capitalInfo => const CapitalInfo(
    capital: Capital("Yamoussoukro"),
    latLng: LatLng(6.82, -5.27),
  );
  @override
  List<RegionalBloc> get regionalBlocs => const [BlocAU()];
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(language: LangEng(), female: "Ivorian", male: "Ivorian"),
    Demonyms(language: LangFra(), female: "Ivoirienne", male: "Ivoirien"),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(
      language: LangFra(),
      official: "République de Côte d'Ivoire",
      common: "Côte d'Ivoire",
    ),
  ];
  @override
  List<NaturalLanguage> get languages => const [LangFra()];
}

extension type const _CivFactory._(CountryCiv _) implements CountryCiv {
  const _CivFactory() : this._(const CountryCiv._());
}
