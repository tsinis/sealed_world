// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/country.dart";

extension type const _TwnFactory._(CountryTwn _) implements CountryTwn {
  const _TwnFactory() : this._(const CountryTwn._());
}

/// A class that represents the the Taiwan country.
class CountryTwn extends WorldCountry {
  /// {@template sealed_world.country_twn_constructor}
  /// Creates a instance of [CountryTwn] (Taiwan country).
  ///
  /// ISO 3166-1 Alpha-3 code: `TWN`, ISO 3166-1 Alpha-2 code: `TW`.
  /// {@endtemplate}
  const factory CountryTwn() = _TwnFactory;

  const CountryTwn._()
    : super(
        name: const CountryName(
          language: LangEng(),
          official: "Republic of China (Taiwan)",
          common: "Taiwan",
        ),
        tld: const [".tw", ".台灣", ".台湾"],
        code: "TWN",
        codeNumeric: "158",
        codeShort: "TW",
        cioc: "TPE",
        independent: false,
        unMember: false,
        idd: const Idd(root: 8, suffixes: [86]),
        altSpellings: const [
          "TW",
          "Táiwān",
          "Republic of China",
          "中華民國",
          "Zhōnghuá Mínguó",
          "Chinese Taipei",
        ],
        continent: const Asia(),
        subregion: const EasternAsia(),
        latLng: const LatLng(23.5, 121),
        areaMetric: 36193,
        emoji: "🇹🇼",
        maps: const Maps(
          googleMaps: "HgMKFQjNadF3Wa6B6",
          openStreetMaps: "relation/449220",
        ),
        population: 23503349,
        fifa: "TPE",
        car: const Car(sign: "RC"),
        timezones: const ["UTC+08:00"],
        postalCode: const PostalCode(),
      );
  @override
  List<FiatCurrency> get currencies => const [FiatTwd()];
  @override
  CapitalInfo get capitalInfo => const CapitalInfo(
    capital: Capital("Taipei"),
    latLng: LatLng(25.03, 121.52),
  );
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(language: LangEng(), female: "Taiwanese", male: "Taiwanese"),
    Demonyms(language: LangFra(), female: "Taïwanaise", male: "Taïwanais"),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(language: LangZho(), official: "中華民國", common: "台灣"),
  ];
  @override
  List<NaturalLanguage> get languages => const [LangZho()];
}
