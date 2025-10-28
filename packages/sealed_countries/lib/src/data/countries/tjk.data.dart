// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/country.dart";

extension type const _TjkFactory._(CountryTjk _) implements CountryTjk {
  const _TjkFactory() : this._(const CountryTjk._());
}

/// A class that represents the Tajikistan country.
class CountryTjk extends WorldCountry {
  /// {@template sealed_world.country_tjk_constructor}
  /// Creates a instance of [CountryTjk] (Tajikistan country).
  ///
  /// ISO 3166-1 Alpha-3 code: `TJK`, ISO 3166-1 Alpha-2 code: `TJ`.
  /// {@endtemplate}
  const factory CountryTjk() = _TjkFactory;

  const CountryTjk._()
    : super(
        name: const CountryName(
          language: LangEng(),
          official: "Republic of Tajikistan",
          common: "Tajikistan",
        ),
        tld: const [".tj"],
        code: "TJK",
        codeNumeric: "762",
        codeShort: "TJ",
        cioc: "TJK",
        idd: const Idd(root: 9, suffixes: [92]),
        altSpellings: const [
          "TJ",
          "Toçikiston",
          "Republic of Tajikistan",
          "Ҷумҳурии Тоҷикистон",
          "Çumhuriyi Toçikiston",
        ],
        continent: const Asia(),
        subregion: const CentralAsia(),
        latLng: const LatLng(39, 71),
        landlocked: true,
        bordersCodes: const ["Afg", "Chn", "Kgz", "Uzb"],
        areaMetric: 143100,
        emoji: "🇹🇯",
        maps: const Maps(
          googleMaps: "8rQgW88jEXijhVb58",
          openStreetMaps: "relation/214626",
        ),
        population: 9537642,
        gini: const Gini(year: 2015, coefficient: 34),
        fifa: "TJK",
        car: const Car(sign: "TJ"),
        timezones: const ["UTC+05:00"],
        postalCode: const PostalCode(
          format: "######",
          regExpPattern: r"^(\d{6})$",
        ),
      );
  @override
  List<FiatCurrency> get currencies => const [FiatTjs()];
  @override
  CapitalInfo get capitalInfo => const CapitalInfo(
    capital: Capital("Dushanbe"),
    latLng: LatLng(38.55, 68.77),
  );
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(language: LangEng(), female: "Tadzhik", male: "Tadzhik"),
    Demonyms(language: LangFra(), female: "Tadjike", male: "Tadjike"),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(
      language: LangRus(),
      official: "Республика Таджикистан",
      common: "Таджикистан",
    ),
    CountryName(
      language: LangTgk(),
      official: "Ҷумҳурии Тоҷикистон",
      common: "Тоҷикистон",
    ),
  ];
  @override
  List<NaturalLanguage> get languages => const [LangRus(), LangTgk()];
}
