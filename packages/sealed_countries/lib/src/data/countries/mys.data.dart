// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/country.dart";

extension type const _MysFactory._(CountryMys _) implements CountryMys {
  const _MysFactory() : this._(const CountryMys._());
}

/// A class that represents the the Malaysia country.
class CountryMys extends WorldCountry {
  /// {@template sealed_world.country_mys_constructor}
  /// Creates a instance of [CountryMys] (Malaysia country).
  ///
  /// ISO 3166-1 Alpha-3 code: `MYS`, ISO 3166-1 Alpha-2 code: `MY`.
  /// {@endtemplate}
  const factory CountryMys() = _MysFactory;

  const CountryMys._()
    : super(
        name: const CountryName(
          language: LangEng(),
          official: "Malaysia",
          common: "Malaysia",
        ),
        tld: const [".my"],
        code: "MYS",
        codeNumeric: "458",
        codeShort: "MY",
        cioc: "MAS",
        idd: const Idd(root: 6, suffixes: [0]),
        altSpellings: const ["MY"],
        continent: const Asia(),
        subregion: const SouthEasternAsia(),
        latLng: const LatLng(2.5, 112.5),
        bordersCodes: const ["Brn", "Idn", "Tha"],
        areaMetric: 330803,
        emoji: "🇲🇾",
        maps: const Maps(
          googleMaps: "qrY1PNeUXGyXDcPy6",
          openStreetMaps: "relation/2108121",
        ),
        population: 32365998,
        gini: const Gini(year: 2015, coefficient: 41.1),
        fifa: "MAS",
        car: const Car(sign: "MAL", isRightSide: false),
        timezones: const ["UTC+08:00"],
        startOfWeek: Weekday.sunday,
        postalCode: const PostalCode(),
      );
  @override
  List<FiatCurrency> get currencies => const [FiatMyr()];
  @override
  CapitalInfo get capitalInfo => const CapitalInfo(
    capital: Capital("Kuala Lumpur"),
    latLng: LatLng(3.17, 101.7),
  );
  @override
  List<RegionalBloc> get regionalBlocs => const [BlocASEAN()];
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(language: LangEng(), female: "Malaysian", male: "Malaysian"),
    Demonyms(language: LangFra(), female: "Malaisienne", male: "Malaisien"),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(language: LangEng(), official: "Malaysia", common: "Malaysia"),
    CountryName(language: LangMsa(), official: "مليسيا", common: "مليسيا"),
  ];
  @override
  List<NaturalLanguage> get languages => const [LangEng(), LangMsa()];
}
