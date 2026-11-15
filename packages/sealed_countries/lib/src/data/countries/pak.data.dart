// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/submodels/world_country.dart";

extension type const _PakFactory._(CountryPak _) implements CountryPak {
  const new() : this._(const CountryPak._());
}

/// A class that represents the Pakistan country.
class CountryPak extends WorldCountry {
  /// {@template sealed_world.country_pak_constructor}
  /// Creates a instance of [CountryPak] (Pakistan country).
  ///
  /// ISO 3166-1 Alpha-3 code: `PAK`, ISO 3166-1 Alpha-2 code: `PK`.
  /// {@endtemplate}
  const factory() = _PakFactory;

  const new _()
    : super._(
        name: const CountryName(
          language: LangEng(),
          official: "Islamic Republic of Pakistan",
          common: "Pakistan",
        ),
        tld: const [".pk"],
        code: "PAK",
        codeNumeric: "586",
        codeShort: "PK",
        cioc: "PAK",
        idd: const Idd(root: 9, suffixes: [2]),
        altSpellings: const [
          "PK",
          "Pākistān",
          "Islamic Republic of Pakistan",
          "Islāmī Jumhūriya'eh Pākistān",
        ],
        continent: const Asia(),
        subregion: const SouthernAsia(),
        latLng: const LatLng(30, 70),
        bordersCodes: const ["Afg", "Chn", "Ind", "Irn"],
        areaMetric: 881912,
        emoji: "🇵🇰",
        maps: const Maps(
          googleMaps: "5LYujdfR5yLUXoERA",
          openStreetMaps: "relation/307573",
        ),
        population: 220892331,
        gini: const Gini(year: 2018, coefficient: 31.6),
        fifa: "PAK",
        car: const Car(sign: "PK", isRightSide: false),
        timezones: const ["UTC+05:00"],
        postalCode: const PostalCode(),
      );
  @override
  List<FiatCurrency> get currencies => const [FiatPkr()];
  @override
  CapitalInfo get capitalInfo => const CapitalInfo(
    capital: Capital("Islamabad"),
    latLng: LatLng(33.68, 73.05),
  );
  @override
  List<RegionalBloc> get regionalBlocs => const [BlocSAARC()];
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(language: LangEng(), female: "Pakistani", male: "Pakistani"),
    Demonyms(language: LangFra(), female: "Pakistanaise", male: "Pakistanais"),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(
      language: LangEng(),
      official: "Islamic Republic of Pakistan",
      common: "Pakistan",
    ),
    CountryName(
      language: LangUrd(),
      official: "اسلامی جمہوریۂ پاكستان",
      common: "پاكستان",
    ),
  ];
  @override
  List<NaturalLanguage> get languages => const [LangEng(), LangUrd()];
}
