// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/country.dart";

/// A class that represents the the Gibraltar country.
class CountryGib extends WorldCountry {
  /// {@template sealed_world.countries_gib_constructor}}
  /// Creates a instance of [CountryGib] (Gibraltar country).
  ///
  /// ISO 3166-1 Alpha-3 code: `GIB`, ISO 3166-1 Alpha-2 code: `GI`.
  /// {@endtemplate}
  const factory CountryGib() = _GibFactory;

  const CountryGib._()
    : super(
        name: const CountryName(
          language: LangEng(),
          official: "Gibraltar",
          common: "Gibraltar",
        ),
        tld: const [".gi"],
        code: "GIB",
        codeNumeric: "292",
        codeShort: "GI",
        independent: false,
        unMember: false,
        idd: const Idd(root: 3, suffixes: [50]),
        altSpellings: const ["GI"],
        continent: const Europe(),
        subregion: const SouthernEurope(),
        latLng: const LatLng(36.13333333, -5.35),
        bordersCodes: const ["Esp"],
        areaMetric: 6,
        emoji: "🇬🇮",
        maps: const Maps(
          googleMaps: "CEoHAs1t6byCBhHFA",
          openStreetMaps: "relation/1278736",
        ),
        population: 33691,
        fifa: "GIB",
        car: const Car(sign: "GBZ"),
        timezones: const ["UTC+01:00"],
      );
  @override
  List<FiatCurrency> get currencies => const [FiatGip()];
  @override
  CapitalInfo get capitalInfo => const CapitalInfo(
    capital: Capital("Gibraltar"),
    latLng: LatLng(36.13, -5.35),
  );
  @override
  List<RegionalBloc> get regionalBlocs => const [BlocEU()];
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(language: LangEng(), female: "Gibraltarian", male: "Gibraltarian"),
    Demonyms(
      language: LangFra(),
      female: "Gibraltarienne",
      male: "Gibraltarien",
    ),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(
      language: LangEng(),
      official: "Gibraltar",
      common: "Gibraltar",
    ),
  ];
  @override
  List<NaturalLanguage> get languages => const [LangEng()];
}

extension type const _GibFactory._(CountryGib _) implements CountryGib {
  const _GibFactory() : this._(const CountryGib._());
}
