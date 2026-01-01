// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/submodels/world_country.dart";

extension type const _EriFactory._(CountryEri _) implements CountryEri {
  const _EriFactory() : this._(const CountryEri._());
}

/// A class that represents the Eritrea country.
class CountryEri extends WorldCountry {
  /// {@template sealed_world.country_eri_constructor}
  /// Creates a instance of [CountryEri] (Eritrea country).
  ///
  /// ISO 3166-1 Alpha-3 code: `ERI`, ISO 3166-1 Alpha-2 code: `ER`.
  /// {@endtemplate}
  const factory CountryEri() = _EriFactory;

  const CountryEri._()
    : super._(
        name: const CountryName(
          language: LangEng(),
          official: "State of Eritrea",
          common: "Eritrea",
        ),
        tld: const [".er"],
        code: "ERI",
        codeNumeric: "232",
        codeShort: "ER",
        cioc: "ERI",
        idd: const Idd(root: 2, suffixes: [91]),
        altSpellings: const [
          "ER",
          "State of Eritrea",
          "ሃገረ ኤርትራ",
          "Dawlat Iritriyá",
          "ʾErtrā",
          "Iritriyā",
        ],
        continent: const Africa(),
        subregion: const EasternAfrica(),
        latLng: const LatLng(15, 39),
        bordersCodes: const ["Dji", "Eth", "Sdn"],
        areaMetric: 117600,
        emoji: "🇪🇷",
        maps: const Maps(
          googleMaps: "HRyqUpnPwwG6jY5j6",
          openStreetMaps: "relation/296961",
        ),
        population: 5352000,
        fifa: "ERI",
        car: const Car(sign: "ER"),
        timezones: const ["UTC+03:00"],
      );
  @override
  List<FiatCurrency> get currencies => const [FiatErn()];
  @override
  CapitalInfo get capitalInfo => const CapitalInfo(
    capital: Capital("Asmara"),
    latLng: LatLng(15.33, 38.93),
  );
  @override
  List<RegionalBloc> get regionalBlocs => const [BlocAU()];
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(language: LangEng(), female: "Eritrean", male: "Eritrean"),
    Demonyms(language: LangFra(), female: "Érythréenne", male: "Érythréen"),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(
      language: LangAra(),
      official: "دولة إرتريا",
      common: "إرتريا‎",
    ),
    CountryName(
      language: LangEng(),
      official: "State of Eritrea",
      common: "Eritrea",
    ),
    CountryName(language: LangTir(), official: "ሃገረ ኤርትራ", common: "ኤርትራ"),
  ];
  @override
  List<NaturalLanguage> get languages => const [
    LangAra(),
    LangEng(),
    LangTir(),
  ];
}
