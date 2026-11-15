// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/submodels/world_country.dart";

extension type const _EthFactory._(CountryEth _) implements CountryEth {
  const new() : this._(const CountryEth._());
}

/// A class that represents the Ethiopia country.
class CountryEth extends WorldCountry {
  /// {@template sealed_world.country_eth_constructor}
  /// Creates a instance of [CountryEth] (Ethiopia country).
  ///
  /// ISO 3166-1 Alpha-3 code: `ETH`, ISO 3166-1 Alpha-2 code: `ET`.
  /// {@endtemplate}
  const factory() = _EthFactory;

  const new _()
    : super._(
        name: const CountryName(
          language: LangEng(),
          official: "Federal Democratic Republic of Ethiopia",
          common: "Ethiopia",
        ),
        tld: const [".et"],
        code: "ETH",
        codeNumeric: "231",
        codeShort: "ET",
        cioc: "ETH",
        idd: const Idd(root: 2, suffixes: [51]),
        altSpellings: const [
          "ET",
          "ʾĪtyōṗṗyā",
          "Federal Democratic Republic of Ethiopia",
          "የኢትዮጵያ ፌዴራላዊ ዲሞክራሲያዊ ሪፐብሊክ",
        ],
        continent: const Africa(),
        subregion: const EasternAfrica(),
        latLng: const LatLng(8, 38),
        landlocked: true,
        bordersCodes: const ["Dji", "Eri", "Ken", "Som", "Ssd", "Sdn"],
        areaMetric: 1104300,
        emoji: "🇪🇹",
        maps: const Maps(
          googleMaps: "2Q4hQWCbhuZLj3fG6",
          openStreetMaps: "relation/192800",
        ),
        population: 109499000,
        gini: const Gini(year: 2015, coefficient: 35),
        fifa: "ETH",
        car: const Car(sign: "ETH"),
        timezones: const ["UTC+03:00"],
        postalCode: const PostalCode(
          format: "####",
          regExpPattern: r"^(\d{4})$",
        ),
      );
  @override
  List<FiatCurrency> get currencies => const [FiatEtb()];
  @override
  CapitalInfo get capitalInfo => const CapitalInfo(
    capital: Capital("Addis Ababa"),
    latLng: LatLng(9.03, 38.7),
  );
  @override
  List<RegionalBloc> get regionalBlocs => const [BlocAU()];
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(language: LangEng(), female: "Ethiopian", male: "Ethiopian"),
    Demonyms(language: LangFra(), female: "Éthiopienne", male: "Éthiopien"),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(
      language: LangAmh(),
      official: "የኢትዮጵያ ፌዴራላዊ ዲሞክራሲያዊ ሪፐብሊክ",
      common: "ኢትዮጵያ",
    ),
  ];
  @override
  List<NaturalLanguage> get languages => const [
    LangAmh(),
    LangAar(),
    LangOrm(),
    LangSom(),
    LangTir(),
  ];
}
