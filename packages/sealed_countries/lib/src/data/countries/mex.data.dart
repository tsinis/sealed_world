// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/country.dart";

extension type const _MexFactory._(CountryMex _) implements CountryMex {
  const _MexFactory() : this._(const CountryMex._());
}

/// A class that represents the the Mexico country.
class CountryMex extends WorldCountry {
  /// {@template sealed_world.country_mex_constructor}
  /// Creates a instance of [CountryMex] (Mexico country).
  ///
  /// ISO 3166-1 Alpha-3 code: `MEX`, ISO 3166-1 Alpha-2 code: `MX`.
  /// {@endtemplate}
  const factory CountryMex() = _MexFactory;

  const CountryMex._()
    : super(
        name: const CountryName(
          language: LangEng(),
          official: "United Mexican States",
          common: "Mexico",
        ),
        tld: const [".mx"],
        code: "MEX",
        codeNumeric: "484",
        codeShort: "MX",
        cioc: "MEX",
        idd: const Idd(root: 5, suffixes: [2]),
        altSpellings: const [
          "MX",
          "Mexicanos",
          "United Mexican States",
          "Estados Unidos Mexicanos",
        ],
        continent: const Americas(),
        subregion: const NorthAmerica(),
        latLng: const LatLng(23, -102),
        bordersCodes: const ["Blz", "Gtm", "Usa"],
        areaMetric: 1964375,
        emoji: "🇲🇽",
        maps: const Maps(
          googleMaps: "s5g7imNPMDEePxzbA",
          openStreetMaps: "relation/114686",
        ),
        population: 128932753,
        gini: const Gini(year: 2018, coefficient: 45.4),
        fifa: "MEX",
        car: const Car(sign: "MEX"),
        timezones: const ["UTC-08:00", "UTC-07:00", "UTC-06:00"],
        postalCode: const PostalCode(),
      );
  @override
  List<FiatCurrency> get currencies => const [FiatMxn()];
  @override
  CapitalInfo get capitalInfo => const CapitalInfo(
    capital: Capital("Mexico City"),
    latLng: LatLng(19.43, -99.13),
  );
  @override
  List<RegionalBloc> get regionalBlocs => const [BlocPA(), BlocNAFTA()];
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(language: LangEng(), female: "Mexican", male: "Mexican"),
    Demonyms(language: LangFra(), female: "Mexicaine", male: "Mexicain"),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(
      language: LangSpa(),
      official: "Estados Unidos Mexicanos",
      common: "México",
    ),
  ];
  @override
  List<NaturalLanguage> get languages => const [LangSpa()];
}
