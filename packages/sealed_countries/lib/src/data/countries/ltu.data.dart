// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/country.dart";

extension type const _LtuFactory._(CountryLtu _) implements CountryLtu {
  const _LtuFactory() : this._(const CountryLtu._());
}

/// A class that represents the the Lithuania country.
class CountryLtu extends WorldCountry {
  /// {@template sealed_world.country_ltu_constructor}
  /// Creates a instance of [CountryLtu] (Lithuania country).
  ///
  /// ISO 3166-1 Alpha-3 code: `LTU`, ISO 3166-1 Alpha-2 code: `LT`.
  /// {@endtemplate}
  const factory CountryLtu() = _LtuFactory;

  const CountryLtu._()
    : super(
        name: const CountryName(
          language: LangEng(),
          official: "Republic of Lithuania",
          common: "Lithuania",
        ),
        tld: const [".lt"],
        code: "LTU",
        codeNumeric: "440",
        codeShort: "LT",
        cioc: "LTU",
        idd: const Idd(root: 3, suffixes: [70]),
        altSpellings: const [
          "LT",
          "Republic of Lithuania",
          "Lietuvos Respublika",
        ],
        continent: const Europe(),
        subregion: const NorthernEurope(),
        latLng: const LatLng(56, 24),
        bordersCodes: const ["Blr", "Lva", "Pol", "Rus"],
        areaMetric: 65300,
        emoji: "🇱🇹",
        maps: const Maps(
          googleMaps: "dd1s9rrLjrK2G8yY6",
          openStreetMaps: "relation/72596",
        ),
        population: 2897430,
        gini: const Gini(year: 2018, coefficient: 35.7),
        fifa: "LTU",
        car: const Car(sign: "LT"),
        timezones: const ["UTC+02:00"],
        postalCode: const PostalCode(
          format: "LT-#####",
          regExpPattern: r"^(?:LT)*(\d{5})$",
        ),
      );
  @override
  List<FiatCurrency> get currencies => const [FiatEur()];
  @override
  CapitalInfo get capitalInfo => const CapitalInfo(
    capital: Capital("Vilnius"),
    latLng: LatLng(54.68, 25.32),
  );
  @override
  List<RegionalBloc> get regionalBlocs => const [BlocEU()];
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(language: LangEng(), female: "Lithuanian", male: "Lithuanian"),
    Demonyms(language: LangFra(), female: "Lituanienne", male: "Lituanien"),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(
      language: LangLit(),
      official: "Lietuvos Respublika",
      common: "Lietuva",
    ),
  ];
  @override
  List<NaturalLanguage> get languages => const [LangLit()];
}
