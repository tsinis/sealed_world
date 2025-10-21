// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/country.dart";

/// A class that represents the the Puerto Rico country.
class CountryPri extends WorldCountry {
  /// {@template sealed_world.countries_pri_constructor}}
  /// Creates a instance of [CountryPri] (Puerto Rico country).
  ///
  /// ISO 3166-1 Alpha-3 code: `PRI`, ISO 3166-1 Alpha-2 code: `PR`.
  /// {@endtemplate}
  const factory CountryPri() = _PriFactory;

  const CountryPri._()
    : super(
        name: const CountryName(
          language: LangEng(),
          official: "Commonwealth of Puerto Rico",
          common: "Puerto Rico",
        ),
        tld: const [".pr"],
        code: "PRI",
        codeNumeric: "630",
        codeShort: "PR",
        cioc: "PUR",
        independent: false,
        unMember: false,
        idd: const Idd(root: 1, suffixes: [787, 939]),
        altSpellings: const [
          "PR",
          "Commonwealth of Puerto Rico",
          "Estado Libre Asociado de Puerto Rico",
        ],
        continent: const Americas(),
        subregion: const Caribbean(),
        latLng: const LatLng(18.25, -66.5),
        areaMetric: 8870,
        emoji: "🇵🇷",
        maps: const Maps(
          googleMaps: "sygfDbtwn389wu8x5",
          openStreetMaps: "relation/4422604",
        ),
        population: 3194034,
        fifa: "PUR",
        car: const Car(sign: "USA"),
        timezones: const ["UTC-04:00"],
        hasCoatOfArms: false,
        postalCode: const PostalCode(
          format: "#####-####",
          regExpPattern: r"^(\d{9})$",
        ),
      );
  @override
  List<FiatCurrency> get currencies => const [FiatUsd()];
  @override
  CapitalInfo get capitalInfo => const CapitalInfo(
    capital: Capital("San Juan"),
    latLng: LatLng(18.47, -66.12),
  );
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(language: LangEng(), female: "Puerto Rican", male: "Puerto Rican"),
    Demonyms(language: LangFra(), female: "Portoricaine", male: "Portoricain"),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(
      language: LangEng(),
      official: "Commonwealth of Puerto Rico",
      common: "Puerto Rico",
    ),
    CountryName(
      language: LangSpa(),
      official: "Estado Libre Asociado de Puerto Rico",
      common: "Puerto Rico",
    ),
  ];
  @override
  List<NaturalLanguage> get languages => const [LangEng(), LangSpa()];
}

extension type const _PriFactory._(CountryPri _) implements CountryPri {
  const _PriFactory() : this._(const CountryPri._());
}
