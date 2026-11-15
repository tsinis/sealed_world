// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/submodels/world_country.dart";

extension type const _RusFactory._(CountryRus _) implements CountryRus {
  const new() : this._(const CountryRus._());
}

/// A class that represents the Russia country.
class CountryRus extends WorldCountry {
  /// {@template sealed_world.country_rus_constructor}
  /// Creates a instance of [CountryRus] (Russia country).
  ///
  /// ISO 3166-1 Alpha-3 code: `RUS`, ISO 3166-1 Alpha-2 code: `RU`.
  /// {@endtemplate}
  const factory() = _RusFactory;

  const new _()
    : super._(
        name: const CountryName(
          language: LangEng(),
          official: "Russian Federation",
          common: "Russia",
        ),
        tld: const [".ru", ".su", ".рф"],
        code: "RUS",
        codeNumeric: "643",
        codeShort: "RU",
        cioc: "RUS",
        idd: const Idd(root: 7, suffixes: [3, 4, 5, 8, 9]),
        altSpellings: const [
          "RU",
          "Russian Federation",
          "Российская Федерация",
        ],
        continent: const Europe(),
        subregion: const EasternEurope(),
        latLng: const LatLng(60, 100),
        bordersCodes: const [
          "Aze",
          "Blr",
          "Chn",
          "Est",
          "Fin",
          "Geo",
          "Kaz",
          "Prk",
          "Lva",
          "Ltu",
          "Mng",
          "Nor",
          "Pol",
          "Ukr",
        ],
        areaMetric: 17098242,
        emoji: "🇷🇺",
        maps: const Maps(
          googleMaps: "4F4PpDhGJgVvLby57",
          openStreetMaps: "relation/60189#map=3/65.15/105.29",
        ),
        population: 144104080,
        gini: const Gini(year: 2018, coefficient: 37.5),
        fifa: "RUS",
        car: const Car(sign: "RUS"),
        timezones: const [
          "UTC+03:00",
          "UTC+04:00",
          "UTC+06:00",
          "UTC+07:00",
          "UTC+08:00",
          "UTC+09:00",
          "UTC+10:00",
          "UTC+11:00",
          "UTC+12:00",
        ],
        postalCode: const PostalCode(
          format: "######",
          regExpPattern: r"^(\d{6})$",
        ),
      );
  @override
  List<FiatCurrency> get currencies => const [FiatRub()];
  @override
  CapitalInfo get capitalInfo => const CapitalInfo(
    capital: Capital("Moscow"),
    latLng: LatLng(55.75, 37.6),
  );
  @override
  List<RegionalBloc> get regionalBlocs => const [BlocEEU()];
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(language: LangEng(), female: "Russian", male: "Russian"),
    Demonyms(language: LangFra(), female: "Russe", male: "Russe"),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(
      language: LangRus(),
      official: "Российская Федерация",
      common: "Россия",
    ),
  ];
  @override
  List<NaturalLanguage> get languages => const [LangRus()];
}
