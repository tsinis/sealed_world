// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/country.dart";

extension type const _CxrFactory._(CountryCxr _) implements CountryCxr {
  const _CxrFactory() : this._(const CountryCxr._());
}

/// A class that represents the the Christmas Island country.
class CountryCxr extends WorldCountry {
  /// {@template sealed_world.country_cxr_constructor}
  /// Creates a instance of [CountryCxr] (Christmas Island country).
  ///
  /// ISO 3166-1 Alpha-3 code: `CXR`, ISO 3166-1 Alpha-2 code: `CX`.
  /// {@endtemplate}
  const factory CountryCxr() = _CxrFactory;

  const CountryCxr._()
    : super(
        name: const CountryName(
          language: LangEng(),
          official: "Territory of Christmas Island",
          common: "Christmas Island",
        ),
        tld: const [".cx"],
        code: "CXR",
        codeNumeric: "162",
        codeShort: "CX",
        independent: false,
        unMember: false,
        idd: const Idd(root: 6, suffixes: [1]),
        altSpellings: const ["CX", "Territory of Christmas Island"],
        continent: const Oceania(),
        subregion: const AustraliaAndNewZealand(),
        latLng: const LatLng(-10.5, 105.66666666),
        areaMetric: 135,
        emoji: "🇨🇽",
        maps: const Maps(
          googleMaps: "ZC17hHsQZpShN5wk9",
          openStreetMaps: "relation/6365444",
        ),
        population: 1692,
        car: const Car(sign: "AUS", isRightSide: false),
        timezones: const ["UTC+07:00"],
        postalCode: const PostalCode(
          format: "####",
          regExpPattern: r"^(\d{4})$",
        ),
      );
  @override
  List<FiatCurrency> get currencies => const [FiatAud()];
  @override
  CapitalInfo get capitalInfo => const CapitalInfo(
    capital: Capital("Flying Fish Cove"),
    latLng: LatLng(-10.42, 105.68),
  );
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(
      language: LangEng(),
      female: "Christmas Islander",
      male: "Christmas Islander",
    ),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(
      language: LangEng(),
      official: "Territory of Christmas Island",
      common: "Christmas Island",
    ),
  ];
  @override
  List<NaturalLanguage> get languages => const [LangEng()];
}
