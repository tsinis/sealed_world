// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/submodels/world_country.dart";

extension type const _SlvFactory._(CountrySlv _) implements CountrySlv {
  const _SlvFactory() : this._(const CountrySlv._());
}

/// A class that represents the El Salvador country.
class CountrySlv extends WorldCountry {
  /// {@template sealed_world.country_slv_constructor}
  /// Creates a instance of [CountrySlv] (El Salvador country).
  ///
  /// ISO 3166-1 Alpha-3 code: `SLV`, ISO 3166-1 Alpha-2 code: `SV`.
  /// {@endtemplate}
  const factory CountrySlv() = _SlvFactory;

  const CountrySlv._()
    : super._(
        name: const CountryName(
          language: LangEng(),
          official: "Republic of El Salvador",
          common: "El Salvador",
        ),
        tld: const [".sv"],
        code: "SLV",
        codeNumeric: "222",
        codeShort: "SV",
        cioc: "ESA",
        idd: const Idd(root: 50, suffixes: [3]),
        altSpellings: const [
          "SV",
          "Republic of El Salvador",
          "República de El Salvador",
        ],
        continent: const Americas(),
        subregion: const CentralAmerica(),
        latLng: const LatLng(13.83333333, -88.91666666),
        bordersCodes: const ["Gtm", "Hnd"],
        areaMetric: 21041,
        emoji: "🇸🇻",
        maps: const Maps(
          googleMaps: "cZnCEi5sEMQtKKcB7",
          openStreetMaps: "relation/1520612",
        ),
        population: 6486201,
        gini: const Gini(year: 2019, coefficient: 38.8),
        fifa: "SLV",
        car: const Car(sign: "ES"),
        timezones: const ["UTC-06:00"],
        postalCode: const PostalCode(
          format: "CP ####",
          regExpPattern: r"^(?:CP)*(\d{4})$",
        ),
      );
  @override
  List<FiatCurrency> get currencies => const [FiatUsd()];
  @override
  CapitalInfo get capitalInfo => const CapitalInfo(
    capital: Capital("San Salvador"),
    latLng: LatLng(13.7, -89.2),
  );
  @override
  List<RegionalBloc> get regionalBlocs => const [BlocCAIS()];
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(language: LangEng(), female: "Salvadoran", male: "Salvadoran"),
    Demonyms(language: LangFra(), female: "Salvadorienne", male: "Salvadorien"),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(
      language: LangSpa(),
      official: "República de El Salvador",
      common: "El Salvador",
    ),
  ];
  @override
  List<NaturalLanguage> get languages => const [LangSpa()];
}
