// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/country.dart";

/// A class that represents the the Svalbard and Jan Mayen country.
class CountrySjm extends WorldCountry {
  /// {@template sealed_world.countries_sjm_constructor}}
  /// Creates a instance of [CountrySjm] (Svalbard and Jan Mayen country).
  ///
  /// ISO 3166-1 Alpha-3 code: `SJM`, ISO 3166-1 Alpha-2 code: `SJ`.
  /// {@endtemplate}
  const factory CountrySjm() = _SjmFactory;

  const CountrySjm._()
    : super(
        name: const CountryName(
          language: LangEng(),
          official: "Svalbard og Jan Mayen",
          common: "Svalbard and Jan Mayen",
        ),
        tld: const [".sj"],
        code: "SJM",
        codeNumeric: "744",
        codeShort: "SJ",
        independent: false,
        unMember: false,
        idd: const Idd(root: 4, suffixes: [779]),
        altSpellings: const ["SJ", "Svalbard and Jan Mayen Islands"],
        continent: const Europe(),
        subregion: const NorthernEurope(),
        latLng: const LatLng(78, 20),
        areaMetric: 377,
        emoji: "🇸🇯",
        maps: const Maps(
          googleMaps: "L2wyyn3cQ16PzQ5J8",
          openStreetMaps: "relation/1337397",
        ),
        population: 2562,
        car: const Car(sign: "N"),
        timezones: const ["UTC+01:00"],
        hasCoatOfArms: false,
      );
  @override
  List<FiatCurrency> get currencies => const [FiatNok()];
  @override
  CapitalInfo get capitalInfo => const CapitalInfo(
    capital: Capital("Longyearbyen"),
    latLng: LatLng(78.22, 15.63),
  );
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(language: LangEng(), female: "Norwegian", male: "Norwegian"),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(
      language: LangNor(),
      official: "Svalbard og Jan Mayen",
      common: "Svalbard og Jan Mayen",
    ),
  ];
  @override
  List<NaturalLanguage> get languages => const [LangNor()];
}

extension type const _SjmFactory._(CountrySjm _) implements CountrySjm {
  const _SjmFactory() : this._(const CountrySjm._());
}
