// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/submodels/world_country.dart";

extension type const _HkgFactory._(CountryHkg _) implements CountryHkg {
  const _HkgFactory() : this._(const CountryHkg._());
}

/// A class that represents the Hong Kong country.
class CountryHkg extends WorldCountry {
  /// {@template sealed_world.country_hkg_constructor}
  /// Creates a instance of [CountryHkg] (Hong Kong country).
  ///
  /// ISO 3166-1 Alpha-3 code: `HKG`, ISO 3166-1 Alpha-2 code: `HK`.
  /// {@endtemplate}
  const factory CountryHkg() = _HkgFactory;

  const CountryHkg._()
    : super._(
        name: const CountryName(
          language: LangEng(),
          official:
              "Hong Kong Special Administrative Region of the People's Republic of China",
          common: "Hong Kong",
        ),
        tld: const [".hk", ".香港"],
        code: "HKG",
        codeNumeric: "344",
        codeShort: "HK",
        cioc: "HKG",
        independent: false,
        unMember: false,
        idd: const Idd(root: 8, suffixes: [52]),
        altSpellings: const ["HK"],
        continent: const Asia(),
        subregion: const EasternAsia(),
        latLng: const LatLng(22.267, 114.188),
        bordersCodes: const ["Chn"],
        areaMetric: 1104,
        emoji: "🇭🇰",
        maps: const Maps(
          googleMaps: "1sEnNmT47ffrC8MU8",
          openStreetMaps: "relation/913110",
        ),
        population: 7500700,
        fifa: "HKG",
        car: const Car(sign: "HK", isRightSide: false),
        timezones: const ["UTC+08:00"],
      );
  @override
  List<FiatCurrency> get currencies => const [FiatHkd()];
  @override
  CapitalInfo get capitalInfo => const CapitalInfo(
    capital: Capital("City of Victoria"),
    latLng: LatLng(22.267, 114.188),
  );
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(language: LangEng(), female: "Hong Konger", male: "Hong Konger"),
    Demonyms(language: LangFra(), female: "Hongkongaise", male: "Hongkongais"),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(
      language: LangEng(),
      official:
          "Hong Kong Special Administrative Region of the People's Republic of China",
      common: "Hong Kong",
    ),
    CountryName(language: LangZho(), official: "中华人民共和国香港特别行政区", common: "香港"),
  ];
  @override
  List<NaturalLanguage> get languages => const [LangEng(), LangZho()];
}
