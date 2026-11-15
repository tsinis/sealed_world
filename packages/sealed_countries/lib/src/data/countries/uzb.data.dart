// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/submodels/world_country.dart";

extension type const _UzbFactory._(CountryUzb _) implements CountryUzb {
  const new() : this._(const CountryUzb._());
}

/// A class that represents the Uzbekistan country.
class CountryUzb extends WorldCountry {
  /// {@template sealed_world.country_uzb_constructor}
  /// Creates a instance of [CountryUzb] (Uzbekistan country).
  ///
  /// ISO 3166-1 Alpha-3 code: `UZB`, ISO 3166-1 Alpha-2 code: `UZ`.
  /// {@endtemplate}
  const factory() = _UzbFactory;

  const new _()
    : super._(
        name: const CountryName(
          language: LangEng(),
          official: "Republic of Uzbekistan",
          common: "Uzbekistan",
        ),
        tld: const [".uz"],
        code: "UZB",
        codeNumeric: "860",
        codeShort: "UZ",
        cioc: "UZB",
        idd: const Idd(root: 9, suffixes: [98]),
        altSpellings: const [
          "UZ",
          "Republic of Uzbekistan",
          "O‘zbekiston Respublikasi",
          "Ўзбекистон Республикаси",
        ],
        continent: const Asia(),
        subregion: const CentralAsia(),
        latLng: const LatLng(41, 64),
        landlocked: true,
        bordersCodes: const ["Afg", "Kaz", "Kgz", "Tjk", "Tkm"],
        areaMetric: 447400,
        emoji: "🇺🇿",
        maps: const Maps(
          googleMaps: "AJpo6MjMx23qSWCz8",
          openStreetMaps: "relation/196240",
        ),
        population: 34232050,
        gini: const Gini(year: 2003, coefficient: 35.3),
        fifa: "UZB",
        car: const Car(sign: "UZ"),
        timezones: const ["UTC+05:00"],
        postalCode: const PostalCode(
          format: "######",
          regExpPattern: r"^(\d{6})$",
        ),
      );
  @override
  List<FiatCurrency> get currencies => const [FiatUzs()];
  @override
  CapitalInfo get capitalInfo => const CapitalInfo(
    capital: Capital("Tashkent"),
    latLng: LatLng(41.32, 69.25),
  );
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(language: LangEng(), female: "Uzbekistani", male: "Uzbekistani"),
    Demonyms(language: LangFra(), female: "Ouzbèke", male: "Ouzbèke"),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(
      language: LangRus(),
      official: "Республика Узбекистан",
      common: "Узбекистан",
    ),
    CountryName(
      language: LangUzb(),
      official: "O'zbekiston Respublikasi",
      common: "O‘zbekiston",
    ),
  ];
  @override
  List<NaturalLanguage> get languages => const [LangRus(), LangUzb()];
}
