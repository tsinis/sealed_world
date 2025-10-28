// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/country.dart";

extension type const _GumFactory._(CountryGum _) implements CountryGum {
  const _GumFactory() : this._(const CountryGum._());
}

/// A class that represents the Guam country.
class CountryGum extends WorldCountry {
  /// {@template sealed_world.country_gum_constructor}
  /// Creates a instance of [CountryGum] (Guam country).
  ///
  /// ISO 3166-1 Alpha-3 code: `GUM`, ISO 3166-1 Alpha-2 code: `GU`.
  /// {@endtemplate}
  const factory CountryGum() = _GumFactory;

  const CountryGum._()
    : super(
        name: const CountryName(
          language: LangEng(),
          official: "Territory of Guam",
          common: "Guam",
        ),
        tld: const [".gu"],
        code: "GUM",
        codeNumeric: "316",
        codeShort: "GU",
        cioc: "GUM",
        independent: false,
        unMember: false,
        idd: const Idd(root: 1, suffixes: [671]),
        altSpellings: const ["GU", "Guåhån"],
        continent: const Oceania(),
        subregion: const Micronesia(),
        latLng: const LatLng(13.46666666, 144.78333333),
        areaMetric: 549,
        emoji: "🇬🇺",
        maps: const Maps(
          googleMaps: "Xfnq2i279b18cH3C9",
          openStreetMaps: "relation/306001",
        ),
        population: 168801,
        fifa: "GUM",
        car: const Car(sign: "USA"),
        timezones: const ["UTC+10:00"],
        postalCode: const PostalCode(
          format: "969##",
          regExpPattern: r"^(969\d{2})$",
        ),
      );
  @override
  List<FiatCurrency> get currencies => const [FiatUsd()];
  @override
  CapitalInfo get capitalInfo => const CapitalInfo(
    capital: Capital("Hagåtña"),
    latLng: LatLng(13.48, 144.75),
  );
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(language: LangEng(), female: "Guamanian", male: "Guamanian"),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(language: LangCha(), official: "Guåhån", common: "Guåhån"),
    CountryName(
      language: LangEng(),
      official: "Territory of Guam",
      common: "Guam",
    ),
  ];
  @override
  List<NaturalLanguage> get languages => const [LangCha(), LangEng()];
}
