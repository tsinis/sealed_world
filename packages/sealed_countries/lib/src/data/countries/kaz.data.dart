// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/submodels/world_country.dart";

extension type const _KazFactory._(CountryKaz _) implements CountryKaz {
  const _KazFactory() : this._(const CountryKaz._());
}

/// A class that represents the Kazakhstan country.
class CountryKaz extends WorldCountry {
  /// {@template sealed_world.country_kaz_constructor}
  /// Creates a instance of [CountryKaz] (Kazakhstan country).
  ///
  /// ISO 3166-1 Alpha-3 code: `KAZ`, ISO 3166-1 Alpha-2 code: `KZ`.
  /// {@endtemplate}
  const factory CountryKaz() = _KazFactory;

  const CountryKaz._()
    : super._(
        name: const CountryName(
          language: LangEng(),
          official: "Republic of Kazakhstan",
          common: "Kazakhstan",
        ),
        tld: const [".kz", ".қаз"],
        code: "KAZ",
        codeNumeric: "398",
        codeShort: "KZ",
        cioc: "KAZ",
        idd: const Idd(root: 7, suffixes: [6, 7]),
        altSpellings: const [
          "KZ",
          "Qazaqstan",
          "Казахстан",
          "Republic of Kazakhstan",
          "Қазақстан Республикасы",
          "Qazaqstan Respublïkası",
          "Республика Казахстан",
          "Respublika Kazakhstan",
        ],
        continent: const Asia(),
        subregion: const CentralAsia(),
        latLng: const LatLng(48.0196, 66.9237),
        landlocked: true,
        bordersCodes: const ["Chn", "Kgz", "Rus", "Tkm", "Uzb"],
        areaMetric: 2724900,
        emoji: "🇰🇿",
        maps: const Maps(
          googleMaps: "8VohJGu7ShuzZYyeA",
          openStreetMaps: "relation/214665",
        ),
        population: 20286084,
        gini: const Gini(year: 2018, coefficient: 27.8),
        fifa: "KAZ",
        car: const Car(sign: "KZ"),
        timezones: const ["UTC+05:00", "UTC+06:00"],
        postalCode: const PostalCode(
          format: "######",
          regExpPattern: r"^(\d{6})$",
        ),
      );
  @override
  List<FiatCurrency> get currencies => const [FiatKzt()];
  @override
  CapitalInfo get capitalInfo => const CapitalInfo(
    capital: Capital("Astana"),
    latLng: LatLng(51.1, 71.26),
  );
  @override
  List<RegionalBloc> get regionalBlocs => const [BlocEEU()];
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(language: LangEng(), female: "Kazakhstani", male: "Kazakhstani"),
    Demonyms(
      language: LangFra(),
      female: "Kazakhstanaise",
      male: "Kazakhstanais",
    ),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(
      language: LangKaz(),
      official: "Қазақстан Республикасы",
      common: "Қазақстан",
    ),
    CountryName(
      language: LangRus(),
      official: "Республика Казахстан",
      common: "Казахстан",
    ),
  ];
  @override
  List<NaturalLanguage> get languages => const [LangKaz(), LangRus()];
}
