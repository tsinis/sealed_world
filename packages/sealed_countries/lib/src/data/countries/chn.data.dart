// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/country.dart";

/// A class that represents the the China country.
class CountryChn extends WorldCountry {
  /// {@template sealed_world.countries_chn_constructor}}
  /// Creates a instance of [CountryChn] (China country).
  ///
  /// ISO 3166-1 Alpha-3 code: `CHN`, ISO 3166-1 Alpha-2 code: `CN`.
  /// {@endtemplate}
  const factory CountryChn() = _ChnFactory;

  const CountryChn._()
    : super(
        name: const CountryName(
          language: LangEng(),
          official: "People's Republic of China",
          common: "China",
        ),
        tld: const [".cn", ".中国", ".中國", ".公司", ".网络"],
        code: "CHN",
        codeNumeric: "156",
        codeShort: "CN",
        cioc: "CHN",
        idd: const Idd(root: 8, suffixes: [6]),
        altSpellings: const [
          "CN",
          "Zhōngguó",
          "Zhongguo",
          "Zhonghua",
          "People's Republic of China",
          "中华人民共和国",
          "Zhōnghuá Rénmín Gònghéguó",
        ],
        continent: const Asia(),
        subregion: const EasternAsia(),
        latLng: const LatLng(35, 105),
        bordersCodes: const [
          "Afg",
          "Btn",
          "Mmr",
          "Hkg",
          "Ind",
          "Kaz",
          "Npl",
          "Prk",
          "Kgz",
          "Lao",
          "Mac",
          "Mng",
          "Pak",
          "Rus",
          "Tjk",
          "Vnm",
        ],
        areaMetric: 9706961,
        emoji: "🇨🇳",
        maps: const Maps(
          googleMaps: "p9qC6vgiFRRXzvGi7",
          openStreetMaps: "relation/270056",
        ),
        population: 1408280000,
        gini: const Gini(year: 2016, coefficient: 38.5),
        fifa: "CHN",
        car: const Car(sign: "RC"),
        timezones: const ["UTC+08:00"],
        postalCode: const PostalCode(
          format: "######",
          regExpPattern: r"^(\d{6})$",
        ),
      );
  @override
  List<FiatCurrency> get currencies => const [FiatCny()];
  @override
  CapitalInfo get capitalInfo => const CapitalInfo(
    capital: Capital("Beijing"),
    latLng: LatLng(39.92, 116.38),
  );
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(language: LangEng(), female: "Chinese", male: "Chinese"),
    Demonyms(language: LangFra(), female: "Chinoise", male: "Chinois"),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(language: LangZho(), official: "中华人民共和国", common: "中国"),
  ];
  @override
  List<NaturalLanguage> get languages => const [LangZho()];
}

extension type const _ChnFactory._(CountryChn _) implements CountryChn {
  const _ChnFactory() : this._(const CountryChn._());
}
