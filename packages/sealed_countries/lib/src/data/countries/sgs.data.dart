// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/submodels/world_country.dart";

extension type const _SgsFactory._(CountrySgs _) implements CountrySgs {
  const _SgsFactory() : this._(const CountrySgs._());
}

/// A class that represents the South Georgia country.
class CountrySgs extends WorldCountry {
  /// {@template sealed_world.country_sgs_constructor}
  /// Creates a instance of [CountrySgs] (South Georgia country).
  ///
  /// ISO 3166-1 Alpha-3 code: `SGS`, ISO 3166-1 Alpha-2 code: `GS`.
  /// {@endtemplate}
  const factory CountrySgs() = _SgsFactory;

  const CountrySgs._()
    : super._(
        name: const CountryName(
          language: LangEng(),
          official: "South Georgia and the South Sandwich Islands",
          common: "South Georgia",
        ),
        tld: const [".gs"],
        code: "SGS",
        codeNumeric: "239",
        codeShort: "GS",
        independent: false,
        unMember: false,
        idd: const Idd(root: 50, suffixes: [0]),
        altSpellings: const [
          "GS",
          "South Georgia and the South Sandwich Islands",
        ],
        continent: const Antarctica(),
        latLng: const LatLng(-54.5, -37),
        areaMetric: 3903,
        emoji: "🇬🇸",
        maps: const Maps(
          googleMaps: "mJzdaBwKBbm2B81q9",
          openStreetMaps: "relation/1983629",
        ),
        population: 30,
        car: const Car(),
        timezones: const ["UTC-02:00"],
        hasCoatOfArms: false,
      );
  @override
  List<FiatCurrency> get currencies => const [FiatGbp()];
  @override
  CapitalInfo get capitalInfo => const CapitalInfo(
    capital: Capital("King Edward Point"),
    latLng: LatLng(-54.28, -36.5),
  );
  @override
  List<RegionalBloc> get regionalBlocs => const [BlocUSAN()];
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(
      language: LangEng(),
      female: "South Georgian South Sandwich Islander",
      male: "South Georgian South Sandwich Islander",
    ),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(
      language: LangEng(),
      official: "South Georgia and the South Sandwich Islands",
      common: "South Georgia",
    ),
  ];
  @override
  List<NaturalLanguage> get languages => const [LangEng()];
}
