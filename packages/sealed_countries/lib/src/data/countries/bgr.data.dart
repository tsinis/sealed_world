// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/country.dart";

extension type const _BgrFactory._(CountryBgr _) implements CountryBgr {
  const _BgrFactory() : this._(const CountryBgr._());
}

/// A class that represents the Bulgaria country.
class CountryBgr extends WorldCountry {
  /// {@template sealed_world.country_bgr_constructor}
  /// Creates a instance of [CountryBgr] (Bulgaria country).
  ///
  /// ISO 3166-1 Alpha-3 code: `BGR`, ISO 3166-1 Alpha-2 code: `BG`.
  /// {@endtemplate}
  const factory CountryBgr() = _BgrFactory;

  const CountryBgr._()
    : super(
        name: const CountryName(
          language: LangEng(),
          official: "Republic of Bulgaria",
          common: "Bulgaria",
        ),
        tld: const [".bg"],
        code: "BGR",
        codeNumeric: "100",
        codeShort: "BG",
        cioc: "BUL",
        idd: const Idd(root: 3, suffixes: [59]),
        altSpellings: const [
          "BG",
          "Republic of Bulgaria",
          "Република България",
        ],
        continent: const Europe(),
        subregion: const SouthwestEurope(),
        latLng: const LatLng(43, 25),
        bordersCodes: const ["Grc", "Mkd", "Rou", "Srb", "Tur"],
        areaMetric: 110879,
        emoji: "🇧🇬",
        maps: const Maps(
          googleMaps: "F5uAhDGWzc3BrHfm9",
          openStreetMaps: "relation/186382",
        ),
        population: 6519789,
        gini: const Gini(year: 2022, coefficient: 38.2),
        fifa: "BUL",
        car: const Car(sign: "BG"),
        timezones: const ["UTC+02:00"],
        postalCode: const PostalCode(
          format: "####",
          regExpPattern: r"^(\d{4})$",
        ),
      );
  @override
  List<FiatCurrency> get currencies => const [FiatEur()];
  @override
  CapitalInfo get capitalInfo => const CapitalInfo(
    capital: Capital("Sofia"),
    latLng: LatLng(42.68, 23.32),
  );
  @override
  List<RegionalBloc> get regionalBlocs => const [BlocEU()];
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(language: LangEng(), female: "Bulgarian", male: "Bulgarian"),
    Demonyms(language: LangFra(), female: "Bulgare", male: "Bulgare"),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(
      language: LangBul(),
      official: "Република България",
      common: "България",
    ),
  ];
  @override
  List<NaturalLanguage> get languages => const [LangBul()];
}
