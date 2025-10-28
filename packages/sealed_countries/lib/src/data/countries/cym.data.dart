// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/country.dart";

extension type const _CymFactory._(CountryCym _) implements CountryCym {
  const _CymFactory() : this._(const CountryCym._());
}

/// A class that represents the Cayman Islands country.
class CountryCym extends WorldCountry {
  /// {@template sealed_world.country_cym_constructor}
  /// Creates a instance of [CountryCym] (Cayman Islands country).
  ///
  /// ISO 3166-1 Alpha-3 code: `CYM`, ISO 3166-1 Alpha-2 code: `KY`.
  /// {@endtemplate}
  const factory CountryCym() = _CymFactory;

  const CountryCym._()
    : super(
        name: const CountryName(
          language: LangEng(),
          official: "Cayman Islands",
          common: "Cayman Islands",
        ),
        tld: const [".ky"],
        code: "CYM",
        codeNumeric: "136",
        codeShort: "KY",
        cioc: "CAY",
        independent: false,
        unMember: false,
        idd: const Idd(root: 1, suffixes: [345]),
        altSpellings: const ["KY"],
        continent: const Americas(),
        subregion: const Caribbean(),
        latLng: const LatLng(19.3133, -81.2546),
        areaMetric: 264,
        emoji: "🇰🇾",
        maps: const Maps(
          googleMaps: "P3ZVXX3LH63t91hL8",
          openStreetMaps: "relation/7269765",
        ),
        population: 87866,
        fifa: "CAY",
        car: const Car(sign: "GB", isRightSide: false),
        timezones: const ["UTC-05:00"],
      );
  @override
  List<FiatCurrency> get currencies => const [FiatKyd()];
  @override
  CapitalInfo get capitalInfo => const CapitalInfo(
    capital: Capital("George Town"),
    latLng: LatLng(19.3, -81.38),
  );
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(language: LangEng(), female: "Caymanian", male: "Caymanian"),
    Demonyms(language: LangFra(), female: "Caïmanienne", male: "Caïmanien"),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(
      language: LangEng(),
      official: "Cayman Islands",
      common: "Cayman Islands",
    ),
  ];
  @override
  List<NaturalLanguage> get languages => const [LangEng()];
}
