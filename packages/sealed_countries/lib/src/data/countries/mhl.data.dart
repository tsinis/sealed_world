// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/country.dart";

extension type const _MhlFactory._(CountryMhl _) implements CountryMhl {
  const _MhlFactory() : this._(const CountryMhl._());
}

/// A class that represents the the Marshall Islands country.
class CountryMhl extends WorldCountry {
  /// {@template sealed_world.country_mhl_constructor}
  /// Creates a instance of [CountryMhl] (Marshall Islands country).
  ///
  /// ISO 3166-1 Alpha-3 code: `MHL`, ISO 3166-1 Alpha-2 code: `MH`.
  /// {@endtemplate}
  const factory CountryMhl() = _MhlFactory;

  const CountryMhl._()
    : super(
        name: const CountryName(
          language: LangEng(),
          official: "Republic of the Marshall Islands",
          common: "Marshall Islands",
        ),
        tld: const [".mh"],
        code: "MHL",
        codeNumeric: "584",
        codeShort: "MH",
        cioc: "MHL",
        idd: const Idd(root: 6, suffixes: [92]),
        altSpellings: const [
          "MH",
          "Republic of the Marshall Islands",
          "Aolepān Aorōkin M̧ajeļ",
        ],
        continent: const Oceania(),
        subregion: const Micronesia(),
        latLng: const LatLng(9, 168),
        areaMetric: 181,
        emoji: "🇲🇭",
        maps: const Maps(
          googleMaps: "A4xLi1XvcX88gi3W8",
          openStreetMaps: "relation/571771",
        ),
        population: 42418,
        car: const Car(sign: "MH"),
        timezones: const ["UTC+12:00"],
      );
  @override
  List<FiatCurrency> get currencies => const [FiatUsd()];
  @override
  CapitalInfo get capitalInfo => const CapitalInfo(
    capital: Capital("Majuro"),
    latLng: LatLng(7.1, 171.38),
  );
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(language: LangEng(), female: "Marshallese", male: "Marshallese"),
    Demonyms(language: LangFra(), female: "Marshallaise", male: "Marshallais"),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(
      language: LangEng(),
      official: "Republic of the Marshall Islands",
      common: "Marshall Islands",
    ),
    CountryName(
      language: LangMah(),
      official: "Aolepān Aorōkin M̧ajeļ",
      common: "M̧ajeļ",
    ),
  ];
  @override
  List<NaturalLanguage> get languages => const [LangEng(), LangMah()];
}
