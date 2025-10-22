// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/country.dart";

extension type const _BraFactory._(CountryBra _) implements CountryBra {
  const _BraFactory() : this._(const CountryBra._());
}

/// A class that represents the the Brazil country.
class CountryBra extends WorldCountry {
  /// {@template sealed_world.country_bra_constructor}
  /// Creates a instance of [CountryBra] (Brazil country).
  ///
  /// ISO 3166-1 Alpha-3 code: `BRA`, ISO 3166-1 Alpha-2 code: `BR`.
  /// {@endtemplate}
  const factory CountryBra() = _BraFactory;

  const CountryBra._()
    : super(
        name: const CountryName(
          language: LangEng(),
          official: "Federative Republic of Brazil",
          common: "Brazil",
        ),
        tld: const [".br"],
        code: "BRA",
        codeNumeric: "076",
        codeShort: "BR",
        cioc: "BRA",
        idd: const Idd(root: 5, suffixes: [5]),
        altSpellings: const [
          "BR",
          "Brasil",
          "Federative Republic of Brazil",
          "República Federativa do Brasil",
        ],
        continent: const Americas(),
        subregion: const SouthAmerica(),
        latLng: const LatLng(-10, -55),
        bordersCodes: const [
          "Arg",
          "Bol",
          "Col",
          "Guf",
          "Guy",
          "Pry",
          "Per",
          "Sur",
          "Ury",
          "Ven",
        ],
        areaMetric: 8515767,
        emoji: "🇧🇷",
        maps: const Maps(
          googleMaps: "waCKk21HeeqFzkNC9",
          openStreetMaps: "relation/59470",
        ),
        population: 203080756,
        gini: const Gini(year: 2022, coefficient: 52),
        fifa: "BRA",
        car: const Car(sign: "BR"),
        timezones: const ["UTC-05:00", "UTC-04:00", "UTC-03:00", "UTC-02:00"],
        postalCode: const PostalCode(
          format: "#####-###",
          regExpPattern: r"^(\d{8})$",
        ),
      );
  @override
  List<FiatCurrency> get currencies => const [FiatBrl()];
  @override
  CapitalInfo get capitalInfo => const CapitalInfo(
    capital: Capital("Brasília"),
    latLng: LatLng(-15.79, -47.88),
  );
  @override
  List<RegionalBloc> get regionalBlocs => const [BlocUSAN()];
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(language: LangEng(), female: "Brazilian", male: "Brazilian"),
    Demonyms(language: LangFra(), female: "Brésilienne", male: "Brésilien"),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(
      language: LangPor(),
      official: "República Federativa do Brasil",
      common: "Brasil",
    ),
  ];
  @override
  List<NaturalLanguage> get languages => const [LangPor()];
}
