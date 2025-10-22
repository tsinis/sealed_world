// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/country.dart";

extension type const _TtoFactory._(CountryTto _) implements CountryTto {
  const _TtoFactory() : this._(const CountryTto._());
}

/// A class that represents the the Trinidad and Tobago country.
class CountryTto extends WorldCountry {
  /// {@template sealed_world.country_tto_constructor}
  /// Creates a instance of [CountryTto] (Trinidad and Tobago country).
  ///
  /// ISO 3166-1 Alpha-3 code: `TTO`, ISO 3166-1 Alpha-2 code: `TT`.
  /// {@endtemplate}
  const factory CountryTto() = _TtoFactory;

  const CountryTto._()
    : super(
        name: const CountryName(
          language: LangEng(),
          official: "Republic of Trinidad and Tobago",
          common: "Trinidad and Tobago",
        ),
        tld: const [".tt"],
        code: "TTO",
        codeNumeric: "780",
        codeShort: "TT",
        cioc: "TTO",
        idd: const Idd(root: 1, suffixes: [868]),
        altSpellings: const ["TT", "Republic of Trinidad and Tobago"],
        continent: const Americas(),
        subregion: const Caribbean(),
        latLng: const LatLng(10.6918, -61.2225),
        areaMetric: 5130,
        emoji: "🇹🇹",
        maps: const Maps(
          googleMaps: "NrRfDEWoG8FGZqWY7",
          openStreetMaps: "relation/555717",
        ),
        population: 1399491,
        gini: const Gini(year: 1992, coefficient: 40.3),
        fifa: "TRI",
        car: const Car(sign: "TT", isRightSide: false),
        timezones: const ["UTC-04:00"],
      );
  @override
  List<FiatCurrency> get currencies => const [FiatTtd()];
  @override
  CapitalInfo get capitalInfo => const CapitalInfo(
    capital: Capital("Port of Spain"),
    latLng: LatLng(10.65, -61.52),
  );
  @override
  List<RegionalBloc> get regionalBlocs => const [BlocCARICOM()];
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(language: LangEng(), female: "Trinidadian", male: "Trinidadian"),
    Demonyms(language: LangFra(), female: "Trinidadienne", male: "Trinidadien"),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(
      language: LangEng(),
      official: "Republic of Trinidad and Tobago",
      common: "Trinidad and Tobago",
    ),
  ];
  @override
  List<NaturalLanguage> get languages => const [LangEng()];
}
