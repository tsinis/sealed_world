// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/country.dart";

extension type const _LkaFactory._(CountryLka _) implements CountryLka {
  const _LkaFactory() : this._(const CountryLka._());
}

/// A class that represents the the Sri Lanka country.
class CountryLka extends WorldCountry {
  /// {@template sealed_world.country_lka_constructor}
  /// Creates a instance of [CountryLka] (Sri Lanka country).
  ///
  /// ISO 3166-1 Alpha-3 code: `LKA`, ISO 3166-1 Alpha-2 code: `LK`.
  /// {@endtemplate}
  const factory CountryLka() = _LkaFactory;

  const CountryLka._()
    : super(
        name: const CountryName(
          language: LangEng(),
          official: "Democratic Socialist Republic of Sri Lanka",
          common: "Sri Lanka",
        ),
        tld: const [".lk", ".இலங்கை", ".ලංකා"],
        code: "LKA",
        codeNumeric: "144",
        codeShort: "LK",
        cioc: "SRI",
        idd: const Idd(root: 9, suffixes: [4]),
        altSpellings: const [
          "LK",
          "ilaṅkai",
          "Democratic Socialist Republic of Sri Lanka",
        ],
        continent: const Asia(),
        subregion: const SouthernAsia(),
        latLng: const LatLng(7, 81),
        areaMetric: 65610,
        emoji: "🇱🇰",
        maps: const Maps(
          googleMaps: "VkPHoeFSfgzRQCDv8",
          openStreetMaps: "relation/536807",
        ),
        population: 21919000,
        gini: const Gini(year: 2016, coefficient: 39.3),
        fifa: "SRI",
        car: const Car(sign: "CL", isRightSide: false),
        timezones: const ["UTC+05:30"],
        postalCode: const PostalCode(),
      );
  @override
  List<FiatCurrency> get currencies => const [FiatLkr()];
  @override
  CapitalInfo get capitalInfo => const CapitalInfo(
    capital: Capital("Sri Jayawardenepura Kotte"),
    latLng: LatLng(6.89, 79.9),
  );
  @override
  List<RegionalBloc> get regionalBlocs => const [BlocSAARC()];
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(language: LangEng(), female: "Sri Lankan", male: "Sri Lankan"),
    Demonyms(language: LangFra(), female: "Sri-lankaise", male: "Sri-lankais"),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(
      language: LangSin(),
      official: "ශ්‍රී ලංකා ප්‍රජාතාන්ත්‍රික සමාජවාදී ජනරජය",
      common: "ශ්‍රී ලංකාව",
    ),
    CountryName(
      language: LangTam(),
      official: "இலங்கை சனநாயக சோசலிசக் குடியரசு",
      common: "இலங்கை",
    ),
  ];
  @override
  List<NaturalLanguage> get languages => const [LangSin(), LangTam()];
}
