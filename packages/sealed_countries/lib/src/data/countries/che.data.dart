// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/country.dart";

/// A class that represents the the Switzerland country.
class CountryChe extends WorldCountry {
  /// {@template sealed_world.countries_che_constructor}}
  /// Creates a instance of [CountryChe] (Switzerland country).
  ///
  /// ISO 3166-1 Alpha-3 code: `CHE`, ISO 3166-1 Alpha-2 code: `CH`.
  /// {@endtemplate}
  const factory CountryChe() = _CheFactory;

  const CountryChe._()
    : super(
        name: const CountryName(
          language: LangEng(),
          official: "Swiss Confederation",
          common: "Switzerland",
        ),
        tld: const [".ch"],
        code: "CHE",
        codeNumeric: "756",
        codeShort: "CH",
        cioc: "SUI",
        idd: const Idd(root: 4, suffixes: [1]),
        altSpellings: const [
          "CH",
          "Swiss Confederation",
          "Schweiz",
          "Suisse",
          "Svizzera",
          "Svizra",
        ],
        continent: const Europe(),
        subregion: const WesternEurope(),
        latLng: const LatLng(47, 8),
        landlocked: true,
        bordersCodes: const ["Aut", "Fra", "Ita", "Lie", "Deu"],
        areaMetric: 41284,
        emoji: "🇨🇭",
        maps: const Maps(
          googleMaps: "uVuZcXaxSx5jLyEC9",
          openStreetMaps: "relation/51701",
        ),
        population: 8327126,
        gini: const Gini(year: 2018, coefficient: 33.1),
        fifa: "SUI",
        car: const Car(sign: "CH"),
        timezones: const ["UTC+01:00"],
        postalCode: const PostalCode(
          format: "####",
          regExpPattern: r"^(\d{4})$",
        ),
      );
  @override
  List<FiatCurrency> get currencies => const [FiatChf()];
  @override
  CapitalInfo get capitalInfo =>
      const CapitalInfo(capital: Capital("Bern"), latLng: LatLng(46.92, 7.47));
  @override
  List<RegionalBloc> get regionalBlocs => const [BlocEFTA()];
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(language: LangEng(), female: "Swiss", male: "Swiss"),
    Demonyms(language: LangFra(), female: "Suisse", male: "Suisse"),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(
      language: LangFra(),
      official: "Confédération suisse",
      common: "Suisse",
    ),
    CountryName(
      language: LangDeu(),
      official: "Schweizerische Eidgenossenschaft",
      common: "Schweiz",
    ),
    CountryName(
      language: LangIta(),
      official: "Confederazione Svizzera",
      common: "Svizzera",
    ),
    CountryName(
      language: LangRoh(),
      official: "Confederaziun svizra",
      common: "Svizra",
    ),
  ];
  @override
  List<NaturalLanguage> get languages => const [
    LangFra(),
    LangDeu(),
    LangIta(),
    LangRoh(),
  ];
}

extension type const _CheFactory._(CountryChe _) implements CountryChe {
  const _CheFactory() : this._(const CountryChe._());
}
