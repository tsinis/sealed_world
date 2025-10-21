// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/country.dart";

/// A class that represents the the Liechtenstein country.
class CountryLie extends WorldCountry {
  /// {@template sealed_world.countries_lie_constructor}}
  /// Creates a instance of [CountryLie] (Liechtenstein country).
  ///
  /// ISO 3166-1 Alpha-3 code: `LIE`, ISO 3166-1 Alpha-2 code: `LI`.
  /// {@endtemplate}
  const factory CountryLie() = _LieFactory;

  const CountryLie._()
    : super(
        name: const CountryName(
          language: LangEng(),
          official: "Principality of Liechtenstein",
          common: "Liechtenstein",
        ),
        tld: const [".li"],
        code: "LIE",
        codeNumeric: "438",
        codeShort: "LI",
        cioc: "LIE",
        idd: const Idd(root: 4, suffixes: [23]),
        altSpellings: const [
          "LI",
          "Principality of Liechtenstein",
          "Fürstentum Liechtenstein",
        ],
        continent: const Europe(),
        subregion: const WesternEurope(),
        latLng: const LatLng(47.26666666, 9.53333333),
        landlocked: true,
        bordersCodes: const ["Aut", "Che"],
        areaMetric: 160,
        emoji: "🇱🇮",
        maps: const Maps(
          googleMaps: "KNuHeiJzAPodwM7y6",
          openStreetMaps: "relation/1155955",
        ),
        population: 41232,
        fifa: "LIE",
        car: const Car(sign: "FL"),
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
      const CapitalInfo(capital: Capital("Vaduz"), latLng: LatLng(47.13, 9.52));
  @override
  List<RegionalBloc> get regionalBlocs => const [BlocEFTA()];
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(
      language: LangEng(),
      female: "Liechtensteiner",
      male: "Liechtensteiner",
    ),
    Demonyms(
      language: LangFra(),
      female: "Liechtensteinoise",
      male: "Liechtensteinois",
    ),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(
      language: LangDeu(),
      official: "Fürstentum Liechtenstein",
      common: "Liechtenstein",
    ),
  ];
  @override
  List<NaturalLanguage> get languages => const [LangDeu()];
}

extension type const _LieFactory._(CountryLie _) implements CountryLie {
  const _LieFactory() : this._(const CountryLie._());
}
