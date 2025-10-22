// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/country.dart";

extension type const _SxmFactory._(CountrySxm _) implements CountrySxm {
  const _SxmFactory() : this._(const CountrySxm._());
}

/// A class that represents the the Sint Maarten country.
class CountrySxm extends WorldCountry {
  /// {@template sealed_world.country_sxm_constructor}
  /// Creates a instance of [CountrySxm] (Sint Maarten country).
  ///
  /// ISO 3166-1 Alpha-3 code: `SXM`, ISO 3166-1 Alpha-2 code: `SX`.
  /// {@endtemplate}
  const factory CountrySxm() = _SxmFactory;

  const CountrySxm._()
    : super(
        name: const CountryName(
          language: LangEng(),
          official: "Sint Maarten",
          common: "Sint Maarten",
        ),
        tld: const [".sx"],
        code: "SXM",
        codeNumeric: "534",
        codeShort: "SX",
        independent: false,
        unMember: false,
        idd: const Idd(root: 1, suffixes: [721]),
        altSpellings: const ["SX", "Sint Maarten (Dutch part)"],
        continent: const Americas(),
        subregion: const Caribbean(),
        latLng: const LatLng(18.033333, -63.05),
        bordersCodes: const ["Maf"],
        areaMetric: 34,
        emoji: "🇸🇽",
        maps: const Maps(
          googleMaps: "DjvcESy1a1oGEZuNA",
          openStreetMaps: "relation/1231790",
        ),
        population: 40812,
        car: const Car(sign: "SX"),
        timezones: const ["UTC-04:00"],
        hasCoatOfArms: false,
      );
  @override
  // ignore: deprecated_member_use, it's TODO!
  List<FiatCurrency> get currencies => const [FiatXcg(), FiatAng()];
  @override
  CapitalInfo get capitalInfo => const CapitalInfo(
    capital: Capital("Philipsburg"),
    latLng: LatLng(18.02, -63.03),
  );
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(
      language: LangEng(),
      female: "St. Maartener",
      male: "St. Maartener",
    ),
    Demonyms(
      language: LangFra(),
      female: "Saint-Martinoise",
      male: "Saint-Martinois",
    ),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(
      language: LangEng(),
      official: "Sint Maarten",
      common: "Sint Maarten",
    ),
    CountryName(
      language: LangFra(),
      official: "Saint-Martin",
      common: "Saint-Martin",
    ),
    CountryName(
      language: LangNld(),
      official: "Sint Maarten",
      common: "Sint Maarten",
    ),
  ];
  @override
  List<NaturalLanguage> get languages => const [
    LangEng(),
    LangFra(),
    LangNld(),
  ];
}
