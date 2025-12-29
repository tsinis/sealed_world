// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/submodels/world_country.dart";

extension type const _CubFactory._(CountryCub _) implements CountryCub {
  const _CubFactory() : this._(const CountryCub._());
}

/// A class that represents the Cuba country.
class CountryCub extends WorldCountry {
  /// {@template sealed_world.country_cub_constructor}
  /// Creates a instance of [CountryCub] (Cuba country).
  ///
  /// ISO 3166-1 Alpha-3 code: `CUB`, ISO 3166-1 Alpha-2 code: `CU`.
  /// {@endtemplate}
  const factory CountryCub() = _CubFactory;

  const CountryCub._()
    : super._(
        name: const CountryName(
          language: LangEng(),
          official: "Republic of Cuba",
          common: "Cuba",
        ),
        tld: const [".cu"],
        code: "CUB",
        codeNumeric: "192",
        codeShort: "CU",
        cioc: "CUB",
        idd: const Idd(root: 5, suffixes: [3]),
        altSpellings: const ["CU", "Republic of Cuba", "República de Cuba"],
        continent: const Americas(),
        subregion: const Caribbean(),
        latLng: const LatLng(21.5, -80),
        areaMetric: 109884,
        emoji: "🇨🇺",
        maps: const Maps(
          googleMaps: "1dDw1QfZspfMUTm99",
          openStreetMaps: "relation/307833",
        ),
        population: 11089511,
        fifa: "CUB",
        car: const Car(sign: "C"),
        timezones: const ["UTC-05:00"],
        postalCode: const PostalCode(
          format: "CP #####",
          regExpPattern: r"^(?:CP)*(\d{5})$",
        ),
      );
  @override
  List<FiatCurrency> get currencies => const [FiatCuc(), FiatCup()];
  @override
  CapitalInfo get capitalInfo => const CapitalInfo(
    capital: Capital("Havana"),
    latLng: LatLng(23.12, -82.35),
  );
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(language: LangEng(), female: "Cuban", male: "Cuban"),
    Demonyms(language: LangFra(), female: "Cubaine", male: "Cubain"),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(
      language: LangSpa(),
      official: "República de Cuba",
      common: "Cuba",
    ),
  ];
  @override
  List<NaturalLanguage> get languages => const [LangSpa()];
}
