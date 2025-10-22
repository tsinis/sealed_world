// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/country.dart";

extension type const _FinFactory._(CountryFin _) implements CountryFin {
  const _FinFactory() : this._(const CountryFin._());
}

/// A class that represents the Finland country.
class CountryFin extends WorldCountry {
  /// {@template sealed_world.country_fin_constructor}
  /// Creates a instance of [CountryFin] (Finland country).
  ///
  /// ISO 3166-1 Alpha-3 code: `FIN`, ISO 3166-1 Alpha-2 code: `FI`.
  /// {@endtemplate}
  const factory CountryFin() = _FinFactory;

  const CountryFin._()
    : super(
        name: const CountryName(
          language: LangEng(),
          official: "Republic of Finland",
          common: "Finland",
        ),
        tld: const [".fi"],
        code: "FIN",
        codeNumeric: "246",
        codeShort: "FI",
        cioc: "FIN",
        idd: const Idd(root: 3, suffixes: [58]),
        altSpellings: const [
          "FI",
          "Suomi",
          "Republic of Finland",
          "Suomen tasavalta",
          "Republiken Finland",
        ],
        continent: const Europe(),
        subregion: const NorthernEurope(),
        latLng: const LatLng(64, 26),
        bordersCodes: const ["Nor", "Swe", "Rus"],
        areaMetric: 338424,
        emoji: "🇫🇮",
        maps: const Maps(
          googleMaps: "HjgWDCNKRAYHrkMn8",
          openStreetMaps: "relation/54224",
        ),
        population: 5530719,
        gini: const Gini(year: 2018, coefficient: 27.3),
        fifa: "FIN",
        car: const Car(sign: "FIN"),
        timezones: const ["UTC+02:00"],
        postalCode: const PostalCode(regExpPattern: r"^(?:FI)*(\d{5})$"),
      );
  @override
  List<FiatCurrency> get currencies => const [FiatEur()];
  @override
  CapitalInfo get capitalInfo => const CapitalInfo(
    capital: Capital("Helsinki"),
    latLng: LatLng(60.17, 24.93),
  );
  @override
  List<RegionalBloc> get regionalBlocs => const [BlocEU()];
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(language: LangEng(), female: "Finnish", male: "Finnish"),
    Demonyms(language: LangFra(), female: "Finlandaise", male: "Finlandais"),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(
      language: LangFin(),
      official: "Suomen tasavalta",
      common: "Suomi",
    ),
    CountryName(
      language: LangSwe(),
      official: "Republiken Finland",
      common: "Finland",
    ),
  ];
  @override
  List<NaturalLanguage> get languages => const [LangFin(), LangSwe()];
}
