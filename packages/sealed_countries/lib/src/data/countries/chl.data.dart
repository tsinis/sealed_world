// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/country.dart";

extension type const _ChlFactory._(CountryChl _) implements CountryChl {
  const _ChlFactory() : this._(const CountryChl._());
}

/// A class that represents the Chile country.
class CountryChl extends WorldCountry {
  /// {@template sealed_world.country_chl_constructor}
  /// Creates a instance of [CountryChl] (Chile country).
  ///
  /// ISO 3166-1 Alpha-3 code: `CHL`, ISO 3166-1 Alpha-2 code: `CL`.
  /// {@endtemplate}
  const factory CountryChl() = _ChlFactory;

  const CountryChl._()
    : super(
        name: const CountryName(
          language: LangEng(),
          official: "Republic of Chile",
          common: "Chile",
        ),
        tld: const [".cl"],
        code: "CHL",
        codeNumeric: "152",
        codeShort: "CL",
        cioc: "CHI",
        idd: const Idd(root: 5, suffixes: [6]),
        altSpellings: const ["CL", "Republic of Chile", "República de Chile"],
        continent: const Americas(),
        subregion: const SouthAmerica(),
        latLng: const LatLng(-30, -71),
        bordersCodes: const ["Arg", "Bol", "Per"],
        areaMetric: 756102,
        emoji: "🇨🇱",
        maps: const Maps(
          googleMaps: "XboxyNHh2fAjCPNn9",
          openStreetMaps: "relation/167454",
        ),
        population: 19629590,
        gini: const Gini(year: 2017, coefficient: 44.4),
        fifa: "CHI",
        car: const Car(sign: "RCH"),
        timezones: const ["UTC-06:00", "UTC-04:00"],
        postalCode: const PostalCode(
          format: "#######",
          regExpPattern: r"^(\d{7})$",
        ),
      );
  @override
  List<FiatCurrency> get currencies => const [FiatClp()];
  @override
  CapitalInfo get capitalInfo => const CapitalInfo(
    capital: Capital("Santiago"),
    latLng: LatLng(-33.45, -70.67),
  );
  @override
  List<RegionalBloc> get regionalBlocs => const [BlocPA(), BlocUSAN()];
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(language: LangEng(), female: "Chilean", male: "Chilean"),
    Demonyms(language: LangFra(), female: "Chilienne", male: "Chilien"),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(
      language: LangSpa(),
      official: "República de Chile",
      common: "Chile",
    ),
  ];
  @override
  List<NaturalLanguage> get languages => const [LangSpa()];
}
