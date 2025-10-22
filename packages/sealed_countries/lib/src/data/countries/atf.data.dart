// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/country.dart";

extension type const _AtfFactory._(CountryAtf _) implements CountryAtf {
  const _AtfFactory() : this._(const CountryAtf._());
}

/// A class that represents the the French Southern and Antarctic Lands country.
class CountryAtf extends WorldCountry {
  /// {@template sealed_world.country_atf_constructor}
  /// Creates a instance of [CountryAtf] (French Southern and Antarctic Lands country).
  ///
  /// ISO 3166-1 Alpha-3 code: `ATF`, ISO 3166-1 Alpha-2 code: `TF`.
  /// {@endtemplate}
  const factory CountryAtf() = _AtfFactory;

  const CountryAtf._()
    : super(
        name: const CountryName(
          language: LangEng(),
          official: "Territory of the French Southern and Antarctic Lands",
          common: "French Southern and Antarctic Lands",
        ),
        tld: const [".tf"],
        code: "ATF",
        codeNumeric: "260",
        codeShort: "TF",
        independent: false,
        unMember: false,
        idd: const Idd(root: 2, suffixes: [62]),
        altSpellings: const ["TF", "French Southern Territories"],
        continent: const Antarctica(),
        latLng: const LatLng(-49.25, 69.167),
        areaMetric: 7747,
        emoji: "🇹🇫",
        maps: const Maps(
          googleMaps: "6ua6CX1m4w1xF2Em7",
          openStreetMaps: "relation/2186658",
        ),
        population: 400,
        car: const Car(),
        timezones: const ["UTC+05:00"],
      );
  @override
  List<FiatCurrency> get currencies => const [FiatEur()];
  @override
  CapitalInfo get capitalInfo => const CapitalInfo(
    capital: Capital("Port-aux-Français"),
    latLng: LatLng(48.81, -1.4),
  );
  @override
  List<RegionalBloc> get regionalBlocs => const [BlocAU()];
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(language: LangEng(), female: "French", male: "French"),
    Demonyms(language: LangFra(), female: "Française", male: "Français"),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(
      language: LangFra(),
      official: "Territoire des Terres australes et antarctiques françaises",
      common: "Terres australes et antarctiques françaises",
    ),
  ];
  @override
  List<NaturalLanguage> get languages => const [LangFra()];
}
