// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/submodels/world_country.dart";

extension type const _FlkFactory._(CountryFlk _) implements CountryFlk {
  const _FlkFactory() : this._(const CountryFlk._());
}

/// A class that represents the Falkland Islands country.
class CountryFlk extends WorldCountry {
  /// {@template sealed_world.country_flk_constructor}
  /// Creates a instance of [CountryFlk] (Falkland Islands country).
  ///
  /// ISO 3166-1 Alpha-3 code: `FLK`, ISO 3166-1 Alpha-2 code: `FK`.
  /// {@endtemplate}
  const factory CountryFlk() = _FlkFactory;

  const CountryFlk._()
    : super._(
        name: const CountryName(
          language: LangEng(),
          official: "Falkland Islands",
          common: "Falkland Islands",
        ),
        tld: const [".fk"],
        code: "FLK",
        codeNumeric: "238",
        codeShort: "FK",
        independent: false,
        unMember: false,
        idd: const Idd(root: 50, suffixes: [0]),
        altSpellings: const [
          "FK",
          "Islas Malvinas",
          "Falkland Islands (Malvinas)",
        ],
        continent: const Americas(),
        subregion: const SouthAmerica(),
        latLng: const LatLng(-51.75, -59),
        areaMetric: 12173,
        emoji: "🇫🇰",
        maps: const Maps(
          googleMaps: "TZH1x7AGanQKifNk7",
          openStreetMaps: "relation/2185374",
        ),
        population: 2563,
        car: const Car(sign: "GB", isRightSide: false),
        timezones: const ["UTC-04:00"],
      );
  @override
  List<FiatCurrency> get currencies => const [FiatFkp()];
  @override
  CapitalInfo get capitalInfo => const CapitalInfo(
    capital: Capital("Stanley"),
    latLng: LatLng(-51.7, -57.85),
  );
  @override
  List<RegionalBloc> get regionalBlocs => const [BlocUSAN()];
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(
      language: LangEng(),
      female: "Falkland Islander",
      male: "Falkland Islander",
    ),
    Demonyms(language: LangFra(), female: "Malouinne", male: "Malouin"),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(
      language: LangEng(),
      official: "Falkland Islands",
      common: "Falkland Islands",
    ),
  ];
  @override
  List<NaturalLanguage> get languages => const [LangEng()];
}
