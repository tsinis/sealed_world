// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/country.dart";

extension type const _ImnFactory._(CountryImn _) implements CountryImn {
  const _ImnFactory() : this._(const CountryImn._());
}

/// A class that represents the the Isle of Man country.
class CountryImn extends WorldCountry {
  /// {@template sealed_world.country_imn_constructor}
  /// Creates a instance of [CountryImn] (Isle of Man country).
  ///
  /// ISO 3166-1 Alpha-3 code: `IMN`, ISO 3166-1 Alpha-2 code: `IM`.
  /// {@endtemplate}
  const factory CountryImn() = _ImnFactory;

  const CountryImn._()
    : super(
        name: const CountryName(
          language: LangEng(),
          official: "Isle of Man",
          common: "Isle of Man",
        ),
        tld: const [".im"],
        code: "IMN",
        codeNumeric: "833",
        codeShort: "IM",
        independent: false,
        unMember: false,
        idd: const Idd(root: 4, suffixes: [4]),
        altSpellings: const ["IM", "Ellan Vannin", "Mann", "Mannin"],
        continent: const Europe(),
        subregion: const NorthernEurope(),
        latLng: const LatLng(54.25, -4.5),
        areaMetric: 572,
        emoji: "🇮🇲",
        maps: const Maps(
          googleMaps: "4DqVHDgVaFgnh8ZV8",
          openStreetMaps: "relation/62269",
        ),
        population: 85032,
        car: const Car(sign: "GBM", isRightSide: false),
        timezones: const ["UTC+00:00"],
        postalCode: const PostalCode(
          format: "@# #@@|@## #@@|@@# #@@|@@## #@@|@#@ #@@|@@#@ #@@|GIR0AA",
          regExpPattern:
              r"^(([A-Z]\d{2}[A-Z]{2})|([A-Z]\d{3}[A-Z]{2})|([A-Z]{2}\d{2}[A-Z]{2})|([A-Z]{2}\d{3}[A-Z]{2})|([A-Z]\d[A-Z]\d[A-Z]{2})|([A-Z]{2}\d[A-Z]\d[A-Z]{2})|(GIR0AA))$",
        ),
      );
  @override
  List<FiatCurrency> get currencies => const [FiatGbp()];
  @override
  CapitalInfo get capitalInfo => const CapitalInfo(
    capital: Capital("Douglas"),
    latLng: LatLng(54.15, -4.48),
  );
  @override
  List<RegionalBloc> get regionalBlocs => const [BlocEU()];
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(language: LangEng(), female: "Manx", male: "Manx"),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(
      language: LangEng(),
      official: "Isle of Man",
      common: "Isle of Man",
    ),
    CountryName(
      language: LangGlv(),
      official: "Ellan Vannin",
      common: "Mannin",
    ),
  ];
  @override
  List<NaturalLanguage> get languages => const [LangEng(), LangGlv()];
}
