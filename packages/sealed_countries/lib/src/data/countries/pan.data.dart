// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/country.dart";

extension type const _PanFactory._(CountryPan _) implements CountryPan {
  const _PanFactory() : this._(const CountryPan._());
}

/// A class that represents the Panama country.
class CountryPan extends WorldCountry {
  /// {@template sealed_world.country_pan_constructor}
  /// Creates a instance of [CountryPan] (Panama country).
  ///
  /// ISO 3166-1 Alpha-3 code: `PAN`, ISO 3166-1 Alpha-2 code: `PA`.
  /// {@endtemplate}
  const factory CountryPan() = _PanFactory;

  const CountryPan._()
    : super(
        name: const CountryName(
          language: LangEng(),
          official: "Republic of Panama",
          common: "Panama",
        ),
        tld: const [".pa"],
        code: "PAN",
        codeNumeric: "591",
        codeShort: "PA",
        cioc: "PAN",
        idd: const Idd(root: 50, suffixes: [7]),
        altSpellings: const ["PA", "Republic of Panama", "República de Panamá"],
        continent: const Americas(),
        subregion: const CentralAmerica(),
        latLng: const LatLng(9, -80),
        bordersCodes: const ["Col", "Cri"],
        areaMetric: 75417,
        emoji: "🇵🇦",
        maps: const Maps(
          googleMaps: "sEN7sKqeawa5oPNLA",
          openStreetMaps: "relation/287668",
        ),
        population: 4314768,
        gini: const Gini(year: 2019, coefficient: 49.8),
        fifa: "PAN",
        car: const Car(sign: "PA"),
        timezones: const ["UTC-05:00"],
      );
  @override
  List<FiatCurrency> get currencies => const [FiatPab(), FiatUsd()];
  @override
  CapitalInfo get capitalInfo => const CapitalInfo(
    capital: Capital("Panama City"),
    latLng: LatLng(8.97, -79.53),
  );
  @override
  List<RegionalBloc> get regionalBlocs => const [BlocCAIS()];
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(language: LangEng(), female: "Panamanian", male: "Panamanian"),
    Demonyms(language: LangFra(), female: "Panaméenne", male: "Panaméen"),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(
      language: LangSpa(),
      official: "República de Panamá",
      common: "Panamá",
    ),
  ];
  @override
  List<NaturalLanguage> get languages => const [LangSpa()];
}
