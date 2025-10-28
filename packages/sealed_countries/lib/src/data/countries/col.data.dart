// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/country.dart";

extension type const _ColFactory._(CountryCol _) implements CountryCol {
  const _ColFactory() : this._(const CountryCol._());
}

/// A class that represents the Colombia country.
class CountryCol extends WorldCountry {
  /// {@template sealed_world.country_col_constructor}
  /// Creates a instance of [CountryCol] (Colombia country).
  ///
  /// ISO 3166-1 Alpha-3 code: `COL`, ISO 3166-1 Alpha-2 code: `CO`.
  /// {@endtemplate}
  const factory CountryCol() = _ColFactory;

  const CountryCol._()
    : super(
        name: const CountryName(
          language: LangEng(),
          official: "Republic of Colombia",
          common: "Colombia",
        ),
        tld: const [".co"],
        code: "COL",
        codeNumeric: "170",
        codeShort: "CO",
        cioc: "COL",
        idd: const Idd(root: 5, suffixes: [7]),
        altSpellings: const [
          "CO",
          "Republic of Colombia",
          "República de Colombia",
        ],
        continent: const Americas(),
        subregion: const SouthAmerica(),
        latLng: const LatLng(4, -72),
        bordersCodes: const ["Bra", "Ecu", "Pan", "Per", "Ven"],
        areaMetric: 1141748,
        emoji: "🇨🇴",
        maps: const Maps(
          googleMaps: "RdwTG8e7gPwS62oR6",
          openStreetMaps: "relation/120027",
        ),
        population: 52695952,
        gini: const Gini(year: 2023, coefficient: 53.9),
        fifa: "COL",
        car: const Car(sign: "CO"),
        timezones: const ["UTC-05:00"],
      );
  @override
  List<FiatCurrency> get currencies => const [FiatCop()];
  @override
  CapitalInfo get capitalInfo => const CapitalInfo(
    capital: Capital("Bogotá"),
    latLng: LatLng(4.71, -74.07),
  );
  @override
  List<RegionalBloc> get regionalBlocs => const [BlocPA(), BlocUSAN()];
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(language: LangEng(), female: "Colombian", male: "Colombian"),
    Demonyms(language: LangFra(), female: "Colombienne", male: "Colombien"),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(
      language: LangSpa(),
      official: "República de Colombia",
      common: "Colombia",
    ),
  ];
  @override
  List<NaturalLanguage> get languages => const [LangSpa()];
}
