// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/country.dart";

extension type const _CriFactory._(CountryCri _) implements CountryCri {
  const _CriFactory() : this._(const CountryCri._());
}

/// A class that represents the the Costa Rica country.
class CountryCri extends WorldCountry {
  /// {@template sealed_world.country_cri_constructor}
  /// Creates a instance of [CountryCri] (Costa Rica country).
  ///
  /// ISO 3166-1 Alpha-3 code: `CRI`, ISO 3166-1 Alpha-2 code: `CR`.
  /// {@endtemplate}
  const factory CountryCri() = _CriFactory;

  const CountryCri._()
    : super(
        name: const CountryName(
          language: LangEng(),
          official: "Republic of Costa Rica",
          common: "Costa Rica",
        ),
        tld: const [".cr"],
        code: "CRI",
        codeNumeric: "188",
        codeShort: "CR",
        cioc: "CRC",
        idd: const Idd(root: 50, suffixes: [6]),
        altSpellings: const [
          "CR",
          "Republic of Costa Rica",
          "República de Costa Rica",
        ],
        continent: const Americas(),
        subregion: const CentralAmerica(),
        latLng: const LatLng(10, -84),
        bordersCodes: const ["Nic", "Pan"],
        areaMetric: 51100,
        emoji: "🇨🇷",
        maps: const Maps(
          googleMaps: "RFiwytjvNrpfKN7k6",
          openStreetMaps: "relation/287667",
        ),
        population: 5044197,
        gini: const Gini(year: 2019, coefficient: 48.2),
        fifa: "CRC",
        car: const Car(sign: "CR"),
        timezones: const ["UTC-06:00"],
        postalCode: const PostalCode(
          format: "####",
          regExpPattern: r"^(\d{4})$",
        ),
      );
  @override
  List<FiatCurrency> get currencies => const [FiatCrc()];
  @override
  CapitalInfo get capitalInfo => const CapitalInfo(
    capital: Capital("San José"),
    latLng: LatLng(9.93, -84.09),
  );
  @override
  List<RegionalBloc> get regionalBlocs => const [BlocCAIS()];
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(language: LangEng(), female: "Costa Rican", male: "Costa Rican"),
    Demonyms(language: LangFra(), female: "Costaricaine", male: "Costaricain"),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(
      language: LangSpa(),
      official: "República de Costa Rica",
      common: "Costa Rica",
    ),
  ];
  @override
  List<NaturalLanguage> get languages => const [LangSpa()];
}
