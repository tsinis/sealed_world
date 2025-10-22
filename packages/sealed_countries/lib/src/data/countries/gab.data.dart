// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/country.dart";

extension type const _GabFactory._(CountryGab _) implements CountryGab {
  const _GabFactory() : this._(const CountryGab._());
}

/// A class that represents the the Gabon country.
class CountryGab extends WorldCountry {
  /// {@template sealed_world.country_gab_constructor}
  /// Creates a instance of [CountryGab] (Gabon country).
  ///
  /// ISO 3166-1 Alpha-3 code: `GAB`, ISO 3166-1 Alpha-2 code: `GA`.
  /// {@endtemplate}
  const factory CountryGab() = _GabFactory;

  const CountryGab._()
    : super(
        name: const CountryName(
          language: LangEng(),
          official: "Gabonese Republic",
          common: "Gabon",
        ),
        tld: const [".ga"],
        code: "GAB",
        codeNumeric: "266",
        codeShort: "GA",
        cioc: "GAB",
        idd: const Idd(root: 2, suffixes: [41]),
        altSpellings: const ["GA", "Gabonese Republic", "République Gabonaise"],
        continent: const Africa(),
        subregion: const MiddleAfrica(),
        latLng: const LatLng(-1, 11.75),
        bordersCodes: const ["Cmr", "Cog", "Gnq"],
        areaMetric: 267668,
        emoji: "🇬🇦",
        maps: const Maps(
          googleMaps: "vyRSkqw1H1fnq4ry6",
          openStreetMaps: "relation/192793",
        ),
        population: 2397368,
        gini: const Gini(year: 2017, coefficient: 38),
        fifa: "GAB",
        car: const Car(sign: "G"),
        timezones: const ["UTC+01:00"],
      );
  @override
  List<FiatCurrency> get currencies => const [FiatXaf()];
  @override
  CapitalInfo get capitalInfo => const CapitalInfo(
    capital: Capital("Libreville"),
    latLng: LatLng(0.38, 9.45),
  );
  @override
  List<RegionalBloc> get regionalBlocs => const [BlocAU()];
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(language: LangEng(), female: "Gabonese", male: "Gabonese"),
    Demonyms(language: LangFra(), female: "Gabonaise", male: "Gabonais"),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(
      language: LangFra(),
      official: "République gabonaise",
      common: "Gabon",
    ),
  ];
  @override
  List<NaturalLanguage> get languages => const [LangFra()];
}
