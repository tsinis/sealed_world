// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/country.dart";

extension type const _KgzFactory._(CountryKgz _) implements CountryKgz {
  const _KgzFactory() : this._(const CountryKgz._());
}

/// A class that represents the Kyrgyzstan country.
class CountryKgz extends WorldCountry {
  /// {@template sealed_world.country_kgz_constructor}
  /// Creates a instance of [CountryKgz] (Kyrgyzstan country).
  ///
  /// ISO 3166-1 Alpha-3 code: `KGZ`, ISO 3166-1 Alpha-2 code: `KG`.
  /// {@endtemplate}
  const factory CountryKgz() = _KgzFactory;

  const CountryKgz._()
    : super(
        name: const CountryName(
          language: LangEng(),
          official: "Kyrgyz Republic",
          common: "Kyrgyzstan",
        ),
        tld: const [".kg"],
        code: "KGZ",
        codeNumeric: "417",
        codeShort: "KG",
        cioc: "KGZ",
        idd: const Idd(root: 9, suffixes: [96]),
        altSpellings: const [
          "KG",
          "Киргизия",
          "Kyrgyz Republic",
          "Кыргыз Республикасы",
          "Kyrgyz Respublikasy",
        ],
        continent: const Asia(),
        subregion: const CentralAsia(),
        latLng: const LatLng(41, 75),
        landlocked: true,
        bordersCodes: const ["Chn", "Kaz", "Tjk", "Uzb"],
        areaMetric: 199951,
        emoji: "🇰🇬",
        maps: const Maps(
          googleMaps: "SKG8BSMMQVvxkRkB7",
          openStreetMaps: "relation/178009",
        ),
        population: 7037590,
        gini: const Gini(year: 2019, coefficient: 29.7),
        fifa: "KGZ",
        car: const Car(sign: "KS"),
        timezones: const ["UTC+06:00"],
        postalCode: const PostalCode(
          format: "######",
          regExpPattern: r"^(\d{6})$",
        ),
      );
  @override
  List<FiatCurrency> get currencies => const [FiatKgs()];
  @override
  CapitalInfo get capitalInfo => const CapitalInfo(
    capital: Capital("Bishkek"),
    latLng: LatLng(42.87, 74.6),
  );
  @override
  List<RegionalBloc> get regionalBlocs => const [BlocEEU()];
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(language: LangEng(), female: "Kirghiz", male: "Kirghiz"),
    Demonyms(language: LangFra(), female: "Kirghize", male: "Kirghize"),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(
      language: LangKir(),
      official: "Кыргыз Республикасы",
      common: "Кыргызстан",
    ),
    CountryName(
      language: LangRus(),
      official: "Кыргызская Республика",
      common: "Киргизия",
    ),
  ];
  @override
  List<NaturalLanguage> get languages => const [LangKir(), LangRus()];
}
