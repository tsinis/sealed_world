// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/country.dart";

extension type const _ZafFactory._(CountryZaf _) implements CountryZaf {
  const _ZafFactory() : this._(const CountryZaf._());
}

/// A class that represents the the South Africa country.
class CountryZaf extends WorldCountry {
  /// {@template sealed_world.country_zaf_constructor}
  /// Creates a instance of [CountryZaf] (South Africa country).
  ///
  /// ISO 3166-1 Alpha-3 code: `ZAF`, ISO 3166-1 Alpha-2 code: `ZA`.
  /// {@endtemplate}
  const factory CountryZaf() = _ZafFactory;

  const CountryZaf._()
    : super(
        name: const CountryName(
          language: LangEng(),
          official: "Republic of South Africa",
          common: "South Africa",
        ),
        tld: const [".za"],
        code: "ZAF",
        codeNumeric: "710",
        codeShort: "ZA",
        cioc: "RSA",
        idd: const Idd(root: 2, suffixes: [7]),
        altSpellings: const [
          "ZA",
          "RSA",
          "Suid-Afrika",
          "Republic of South Africa",
        ],
        continent: const Africa(),
        subregion: const SouthernAfrica(),
        latLng: const LatLng(-29, 24),
        bordersCodes: const ["Bwa", "Lso", "Moz", "Nam", "Swz", "Zwe"],
        areaMetric: 1221037,
        emoji: "🇿🇦",
        maps: const Maps(
          googleMaps: "CLCZ1R8Uz1KpYhRv6",
          openStreetMaps: "relation/87565",
        ),
        population: 59308690,
        gini: const Gini(year: 2014, coefficient: 63),
        fifa: "RSA",
        car: const Car(sign: "ZA", isRightSide: false),
        timezones: const ["UTC+02:00"],
        postalCode: const PostalCode(
          format: "####",
          regExpPattern: r"^(\d{4})$",
        ),
      );
  @override
  List<FiatCurrency> get currencies => const [FiatZar()];
  @override
  CapitalInfo get capitalInfo => const CapitalInfo(
    capital: Capital("Pretoria", deJure: "Bloemfontein", third: "Cape Town"),
    latLng: LatLng(-25.7, 28.22),
  );
  @override
  List<RegionalBloc> get regionalBlocs => const [BlocAU()];
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(
      language: LangEng(),
      female: "South African",
      male: "South African",
    ),
    Demonyms(
      language: LangFra(),
      female: "Sud-africaine",
      male: "Sud-africain",
    ),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(
      language: LangAfr(),
      official: "Republiek van Suid-Afrika",
      common: "South Africa",
    ),
    CountryName(
      language: LangEng(),
      official: "Republic of South Africa",
      common: "South Africa",
    ),
    CountryName(
      language: LangNbl(),
      official: "IRiphabliki yeSewula Afrika",
      common: "Sewula Afrika",
    ),
    CountryName(
      language: LangSot(),
      official: "Rephaboliki ya Afrika Borwa",
      common: "Afrika Borwa",
    ),
    CountryName(
      language: LangSsw(),
      official: "IRiphabhulikhi yeNingizimu Afrika",
      common: "Ningizimu Afrika",
    ),
    CountryName(
      language: LangTsn(),
      official: "Rephaboliki ya Aforika Borwa",
      common: "Aforika Borwa",
    ),
    CountryName(
      language: LangTso(),
      official: "Riphabliki ra Afrika Dzonga",
      common: "Afrika Dzonga",
    ),
    CountryName(
      language: LangVen(),
      official: "Riphabuḽiki ya Afurika Tshipembe",
      common: "Afurika Tshipembe",
    ),
    CountryName(
      language: LangXho(),
      official: "IRiphabliki yaseMzantsi Afrika",
      common: "Mzantsi Afrika",
    ),
    CountryName(
      language: LangZul(),
      official: "IRiphabliki yaseNingizimu Afrika",
      common: "Ningizimu Afrika",
    ),
  ];
  @override
  List<NaturalLanguage> get languages => const [
    LangAfr(),
    LangEng(),
    LangNbl(),
    LangSot(),
    LangSsw(),
    LangTsn(),
    LangTso(),
    LangVen(),
    LangXho(),
    LangZul(),
  ];
}
