// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/country.dart";

extension type const _IndFactory._(CountryInd _) implements CountryInd {
  const _IndFactory() : this._(const CountryInd._());
}

/// A class that represents the the India country.
class CountryInd extends WorldCountry {
  /// {@template sealed_world.country_ind_constructor}
  /// Creates a instance of [CountryInd] (India country).
  ///
  /// ISO 3166-1 Alpha-3 code: `IND`, ISO 3166-1 Alpha-2 code: `IN`.
  /// {@endtemplate}
  const factory CountryInd() = _IndFactory;

  const CountryInd._()
    : super(
        name: const CountryName(
          language: LangEng(),
          official: "Republic of India",
          common: "India",
        ),
        tld: const [".in"],
        code: "IND",
        codeNumeric: "356",
        codeShort: "IN",
        cioc: "IND",
        idd: const Idd(root: 9, suffixes: [1]),
        altSpellings: const [
          "IN",
          "Bhārat",
          "Republic of India",
          "Bharat Ganrajya",
          "இந்தியா",
        ],
        continent: const Asia(),
        subregion: const SouthernAsia(),
        latLng: const LatLng(20, 77),
        bordersCodes: const ["Bgd", "Btn", "Mmr", "Chn", "Npl", "Pak"],
        areaMetric: 3287590,
        emoji: "🇮🇳",
        maps: const Maps(
          googleMaps: "WSk3fLwG4vtPQetp7",
          openStreetMaps: "relation/304716",
        ),
        population: 1428627663,
        gini: const Gini(year: 2011, coefficient: 35.7),
        fifa: "IND",
        car: const Car(sign: "IND", isRightSide: false),
        timezones: const ["UTC+05:30"],
        postalCode: const PostalCode(
          format: "######",
          regExpPattern: r"^(\d{6})$",
        ),
      );
  @override
  List<FiatCurrency> get currencies => const [FiatInr()];
  @override
  CapitalInfo get capitalInfo => const CapitalInfo(
    capital: Capital("New Delhi"),
    latLng: LatLng(28.6, 77.2),
  );
  @override
  List<RegionalBloc> get regionalBlocs => const [BlocSAARC()];
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(language: LangEng(), female: "Indian", male: "Indian"),
    Demonyms(language: LangFra(), female: "Indienne", male: "Indien"),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(
      language: LangEng(),
      official: "Republic of India",
      common: "India",
    ),
    CountryName(language: LangHin(), official: "भारत गणराज्य", common: "भारत"),
    CountryName(
      language: LangTam(),
      official: "இந்தியக் குடியரசு",
      common: "இந்தியா",
    ),
  ];
  @override
  List<NaturalLanguage> get languages => const [
    LangEng(),
    LangHin(),
    LangTam(),
  ];
}
