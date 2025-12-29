// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/submodels/world_country.dart";

extension type const _HmdFactory._(CountryHmd _) implements CountryHmd {
  const _HmdFactory() : this._(const CountryHmd._());
}

/// A class that represents the Heard Island and McDonald Islands country.
class CountryHmd extends WorldCountry {
  /// {@template sealed_world.country_hmd_constructor}
  /// Creates a instance of [CountryHmd] (Heard Island and McDonald Islands country).
  ///
  /// ISO 3166-1 Alpha-3 code: `HMD`, ISO 3166-1 Alpha-2 code: `HM`.
  /// {@endtemplate}
  const factory CountryHmd() = _HmdFactory;

  const CountryHmd._()
    : super._(
        name: const CountryName(
          language: LangEng(),
          official: "Heard Island and McDonald Islands",
          common: "Heard Island and McDonald Islands",
        ),
        tld: const [".hm", ".aq"],
        code: "HMD",
        codeNumeric: "334",
        codeShort: "HM",
        independent: false,
        unMember: false,
        idd: const Idd(root: 6, suffixes: [72]),
        altSpellings: const ["HM", "Heard Island and McDonald Islands"],
        continent: const Antarctica(),
        latLng: const LatLng(-53.0818, 73.5042),
        areaMetric: 412,
        emoji: "🇭🇲",
        maps: const Maps(
          googleMaps: "k5FBAiVaVyozuYeA7",
          openStreetMaps: "relation/2177227",
        ),
        population: 0,
        car: const Car(),
        timezones: const ["UTC+05:00"],
        hasCoatOfArms: false,
      );
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(
      language: LangEng(),
      female: "Heard and McDonald Islander",
      male: "Heard and McDonald Islander",
    ),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(
      language: LangEng(),
      official: "Heard Island and McDonald Islands",
      common: "Heard Island and McDonald Islands",
    ),
  ];
  @override
  List<NaturalLanguage> get languages => const [LangEng()];
}
