// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/submodels/world_country.dart";

extension type const _NzlFactory._(CountryNzl _) implements CountryNzl {
  const _NzlFactory() : this._(const CountryNzl._());
}

/// A class that represents the New Zealand country.
class CountryNzl extends WorldCountry {
  /// {@template sealed_world.country_nzl_constructor}
  /// Creates a instance of [CountryNzl] (New Zealand country).
  ///
  /// ISO 3166-1 Alpha-3 code: `NZL`, ISO 3166-1 Alpha-2 code: `NZ`.
  /// {@endtemplate}
  const factory CountryNzl() = _NzlFactory;

  const CountryNzl._()
    : super._(
        name: const CountryName(
          language: LangEng(),
          official: "New Zealand",
          common: "New Zealand",
        ),
        tld: const [".nz"],
        code: "NZL",
        codeNumeric: "554",
        codeShort: "NZ",
        cioc: "NZL",
        idd: const Idd(root: 6, suffixes: [4]),
        altSpellings: const ["NZ", "Aotearoa"],
        continent: const Oceania(),
        subregion: const AustraliaAndNewZealand(),
        latLng: const LatLng(-41, 174),
        areaMetric: 270467,
        emoji: "🇳🇿",
        maps: const Maps(
          googleMaps: "xXiDQo65dwdpw9iu8",
          openStreetMaps: "relation/556706#map=5/-46.710/172.046",
        ),
        population: 5084300,
        fifa: "NZL",
        car: const Car(sign: "NZ", isRightSide: false),
        timezones: const [
          "UTC-11:00",
          "UTC-10:00",
          "UTC+12:00",
          "UTC+12:45",
          "UTC+13:00",
        ],
        postalCode: const PostalCode(
          format: "####",
          regExpPattern: r"^(\d{4})$",
        ),
      );
  @override
  List<FiatCurrency> get currencies => const [FiatNzd()];
  @override
  CapitalInfo get capitalInfo => const CapitalInfo(
    capital: Capital("Wellington"),
    latLng: LatLng(-41.3, 174.78),
  );
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(
      language: LangEng(),
      female: "New Zealander",
      male: "New Zealander",
    ),
    Demonyms(
      language: LangFra(),
      female: "Neo-Zélandaise",
      male: "Neo-Zélandais",
    ),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(
      language: LangEng(),
      official: "New Zealand",
      common: "New Zealand",
    ),
    CountryName(language: LangMri(), official: "Aotearoa", common: "Aotearoa"),
  ];
  @override
  List<NaturalLanguage> get languages => const [LangEng(), LangMri()];
}
