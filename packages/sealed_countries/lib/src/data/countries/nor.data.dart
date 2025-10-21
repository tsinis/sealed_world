// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/country.dart";

/// A class that represents the the Norway country.
class CountryNor extends WorldCountry {
  /// {@template sealed_world.countries_nor_constructor}}
  /// Creates a instance of [CountryNor] (Norway country).
  ///
  /// ISO 3166-1 Alpha-3 code: `NOR`, ISO 3166-1 Alpha-2 code: `NO`.
  /// {@endtemplate}
  const factory CountryNor() = _NorFactory;

  const CountryNor._()
    : super(
        name: const CountryName(
          language: LangEng(),
          official: "Kingdom of Norway",
          common: "Norway",
        ),
        tld: const [".no"],
        code: "NOR",
        codeNumeric: "578",
        codeShort: "NO",
        cioc: "NOR",
        idd: const Idd(root: 4, suffixes: [7]),
        altSpellings: const [
          "NO",
          "Norge",
          "Noreg",
          "Kingdom of Norway",
          "Kongeriket Norge",
          "Kongeriket Noreg",
        ],
        continent: const Europe(),
        subregion: const NorthernEurope(),
        latLng: const LatLng(62, 10),
        bordersCodes: const ["Fin", "Swe", "Rus"],
        areaMetric: 323802,
        emoji: "🇳🇴",
        maps: const Maps(
          googleMaps: "htWRrphA7vNgQNdSA",
          openStreetMaps: "relation/2978650",
        ),
        population: 5379475,
        gini: const Gini(year: 2018, coefficient: 27.6),
        fifa: "NOR",
        car: const Car(sign: "N"),
        timezones: const ["UTC+01:00"],
        postalCode: const PostalCode(
          format: "####",
          regExpPattern: r"^(\d{4})$",
        ),
      );
  @override
  List<FiatCurrency> get currencies => const [FiatNok()];
  @override
  CapitalInfo get capitalInfo =>
      const CapitalInfo(capital: Capital("Oslo"), latLng: LatLng(59.92, 10.75));
  @override
  List<RegionalBloc> get regionalBlocs => const [BlocEFTA()];
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(language: LangEng(), female: "Norwegian", male: "Norwegian"),
    Demonyms(language: LangFra(), female: "Norvégienne", male: "Norvégien"),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(
      language: LangNno(),
      official: "Kongeriket Noreg",
      common: "Noreg",
    ),
    CountryName(
      language: LangNob(),
      official: "Kongeriket Norge",
      common: "Norge",
    ),
  ];
  @override
  List<NaturalLanguage> get languages => const [LangNno(), LangNob()];
}

extension type const _NorFactory._(CountryNor _) implements CountryNor {
  const _NorFactory() : this._(const CountryNor._());
}
