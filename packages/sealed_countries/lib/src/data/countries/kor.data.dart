// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/country.dart";

extension type const _KorFactory._(CountryKor _) implements CountryKor {
  const _KorFactory() : this._(const CountryKor._());
}

/// A class that represents the South Korea country.
class CountryKor extends WorldCountry {
  /// {@template sealed_world.country_kor_constructor}
  /// Creates a instance of [CountryKor] (South Korea country).
  ///
  /// ISO 3166-1 Alpha-3 code: `KOR`, ISO 3166-1 Alpha-2 code: `KR`.
  /// {@endtemplate}
  const factory CountryKor() = _KorFactory;

  const CountryKor._()
    : super(
        name: const CountryName(
          language: LangEng(),
          official: "Republic of Korea",
          common: "South Korea",
        ),
        tld: const [".kr", ".한국"],
        code: "KOR",
        codeNumeric: "410",
        codeShort: "KR",
        cioc: "KOR",
        idd: const Idd(root: 8, suffixes: [2]),
        altSpellings: const [
          "KR",
          "Korea, Republic of",
          "Republic of Korea",
          "남한",
          "남조선",
        ],
        continent: const Asia(),
        subregion: const EasternAsia(),
        latLng: const LatLng(37, 127.5),
        bordersCodes: const ["Prk"],
        areaMetric: 100210,
        emoji: "🇰🇷",
        maps: const Maps(
          googleMaps: "7ecjaJXefjAQhxjGA",
          openStreetMaps: "relation/307756",
        ),
        population: 51780579,
        gini: const Gini(year: 2016, coefficient: 31.4),
        fifa: "KOR",
        car: const Car(sign: "ROK"),
        timezones: const ["UTC+09:00"],
        postalCode: const PostalCode(
          format: "SEOUL ###-###",
          regExpPattern: r"^(?:SEOUL)*(\d{6})$",
        ),
      );
  @override
  List<FiatCurrency> get currencies => const [FiatKrw()];
  @override
  CapitalInfo get capitalInfo => const CapitalInfo(
    capital: Capital("Seoul"),
    latLng: LatLng(37.55, 126.98),
  );
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(language: LangEng(), female: "South Korean", male: "South Korean"),
    Demonyms(language: LangFra(), female: "Sud-coréenne", male: "Sud-coréen"),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(language: LangKor(), official: "대한민국", common: "한국"),
  ];
  @override
  List<NaturalLanguage> get languages => const [LangKor()];
}
