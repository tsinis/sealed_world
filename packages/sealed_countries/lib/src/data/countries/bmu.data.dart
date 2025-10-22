// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/country.dart";

extension type const _BmuFactory._(CountryBmu _) implements CountryBmu {
  const _BmuFactory() : this._(const CountryBmu._());
}

/// A class that represents the the Bermuda country.
class CountryBmu extends WorldCountry {
  /// {@template sealed_world.country_bmu_constructor}
  /// Creates a instance of [CountryBmu] (Bermuda country).
  ///
  /// ISO 3166-1 Alpha-3 code: `BMU`, ISO 3166-1 Alpha-2 code: `BM`.
  /// {@endtemplate}
  const factory CountryBmu() = _BmuFactory;

  const CountryBmu._()
    : super(
        name: const CountryName(
          language: LangEng(),
          official: "Bermuda",
          common: "Bermuda",
        ),
        tld: const [".bm"],
        code: "BMU",
        codeNumeric: "060",
        codeShort: "BM",
        cioc: "BER",
        independent: false,
        unMember: false,
        idd: const Idd(root: 1, suffixes: [441]),
        altSpellings: const [
          "BM",
          "The Islands of Bermuda",
          "The Bermudas",
          "Somers Isles",
        ],
        continent: const Americas(),
        subregion: const NorthAmerica(),
        latLng: const LatLng(32.33333333, -64.75),
        areaMetric: 54,
        emoji: "🇧🇲",
        maps: const Maps(
          googleMaps: "NLsRGNjTzDghTtAJA",
          openStreetMaps: "relation/1993208",
        ),
        population: 63779,
        fifa: "BER",
        car: const Car(sign: "GB", isRightSide: false),
        timezones: const ["UTC-04:00"],
        postalCode: const PostalCode(
          format: "@@ ##",
          regExpPattern: r"^([A-Z]{2}\d{2})$",
        ),
      );
  @override
  List<FiatCurrency> get currencies => const [FiatBmd()];
  @override
  CapitalInfo get capitalInfo => const CapitalInfo(
    capital: Capital("Hamilton"),
    latLng: LatLng(32.28, -64.78),
  );
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(language: LangEng(), female: "Bermudian", male: "Bermudian"),
    Demonyms(language: LangFra(), female: "Bermudienne", male: "Bermudien"),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(language: LangEng(), official: "Bermuda", common: "Bermuda"),
  ];
  @override
  List<NaturalLanguage> get languages => const [LangEng()];
}
