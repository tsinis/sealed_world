// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/country.dart";

/// A class that represents the the British Virgin Islands country.
class CountryVgb extends WorldCountry {
  /// {@template sealed_world.countries_vgb_constructor}}
  /// Creates a instance of [CountryVgb] (British Virgin Islands country).
  ///
  /// ISO 3166-1 Alpha-3 code: `VGB`, ISO 3166-1 Alpha-2 code: `VG`.
  /// {@endtemplate}
  const factory CountryVgb() = _VgbFactory;

  const CountryVgb._()
    : super(
        name: const CountryName(
          language: LangEng(),
          official: "Virgin Islands",
          common: "British Virgin Islands",
        ),
        tld: const [".vg"],
        code: "VGB",
        codeNumeric: "092",
        codeShort: "VG",
        cioc: "IVB",
        independent: false,
        unMember: false,
        idd: const Idd(root: 1, suffixes: [284]),
        altSpellings: const ["VG", "Virgin Islands, British"],
        continent: const Americas(),
        subregion: const Caribbean(),
        latLng: const LatLng(18.431383, -64.62305),
        areaMetric: 151,
        emoji: "🇻🇬",
        maps: const Maps(
          googleMaps: "49C9cSesNVAR9DQk8",
          openStreetMaps: "relation/285454",
        ),
        population: 30237,
        fifa: "VGB",
        car: const Car(sign: "BVI", isRightSide: false),
        timezones: const ["UTC-04:00"],
      );
  @override
  List<FiatCurrency> get currencies => const [FiatUsd()];
  @override
  CapitalInfo get capitalInfo => const CapitalInfo(
    capital: Capital("Road Town"),
    latLng: LatLng(18.42, -64.62),
  );
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(
      language: LangEng(),
      female: "Virgin Islander",
      male: "Virgin Islander",
    ),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(
      language: LangEng(),
      official: "Virgin Islands",
      common: "British Virgin Islands",
    ),
  ];
  @override
  List<NaturalLanguage> get languages => const [LangEng()];
}

extension type const _VgbFactory._(CountryVgb _) implements CountryVgb {
  const _VgbFactory() : this._(const CountryVgb._());
}
