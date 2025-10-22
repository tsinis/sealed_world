// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/country.dart";

extension type const _ArgFactory._(CountryArg _) implements CountryArg {
  const _ArgFactory() : this._(const CountryArg._());
}

/// A class that represents the the Argentina country.
class CountryArg extends WorldCountry {
  /// {@template sealed_world.country_arg_constructor}
  /// Creates a instance of [CountryArg] (Argentina country).
  ///
  /// ISO 3166-1 Alpha-3 code: `ARG`, ISO 3166-1 Alpha-2 code: `AR`.
  /// {@endtemplate}
  const factory CountryArg() = _ArgFactory;

  const CountryArg._()
    : super(
        name: const CountryName(
          language: LangEng(),
          official: "Argentine Republic",
          common: "Argentina",
        ),
        tld: const [".ar"],
        code: "ARG",
        codeNumeric: "032",
        codeShort: "AR",
        cioc: "ARG",
        idd: const Idd(root: 5, suffixes: [4]),
        altSpellings: const ["AR", "Argentine Republic", "República Argentina"],
        continent: const Americas(),
        subregion: const SouthAmerica(),
        latLng: const LatLng(-34, -64),
        bordersCodes: const ["Bol", "Bra", "Chl", "Pry", "Ury"],
        areaMetric: 2780400,
        emoji: "🇦🇷",
        maps: const Maps(
          googleMaps: "Z9DXNxhf2o93kvyc6",
          openStreetMaps: "relation/286393",
        ),
        population: 46044703,
        gini: const Gini(year: 2019, coefficient: 42.9),
        fifa: "ARG",
        car: const Car(sign: "RA"),
        timezones: const ["UTC-03:00"],
        postalCode: const PostalCode(
          format: "@####@@@",
          regExpPattern: r"^([A-Z]\d{4}[A-Z]{3})$",
        ),
      );
  @override
  List<FiatCurrency> get currencies => const [FiatArs()];
  @override
  CapitalInfo get capitalInfo => const CapitalInfo(
    capital: Capital("Buenos Aires"),
    latLng: LatLng(-34.58, -58.67),
  );
  @override
  List<RegionalBloc> get regionalBlocs => const [BlocUSAN()];
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(language: LangEng(), female: "Argentine", male: "Argentine"),
    Demonyms(language: LangFra(), female: "Argentine", male: "Argentin"),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(
      language: LangGrn(),
      official: "Argentine Republic",
      common: "Argentina",
    ),
    CountryName(
      language: LangSpa(),
      official: "República Argentina",
      common: "Argentina",
    ),
  ];
  @override
  List<NaturalLanguage> get languages => const [LangGrn(), LangSpa()];
}
