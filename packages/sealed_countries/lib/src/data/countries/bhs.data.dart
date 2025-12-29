// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/submodels/world_country.dart";

extension type const _BhsFactory._(CountryBhs _) implements CountryBhs {
  const _BhsFactory() : this._(const CountryBhs._());
}

/// A class that represents the Bahamas country.
class CountryBhs extends WorldCountry {
  /// {@template sealed_world.country_bhs_constructor}
  /// Creates a instance of [CountryBhs] (Bahamas country).
  ///
  /// ISO 3166-1 Alpha-3 code: `BHS`, ISO 3166-1 Alpha-2 code: `BS`.
  /// {@endtemplate}
  const factory CountryBhs() = _BhsFactory;

  const CountryBhs._()
    : super._(
        name: const CountryName(
          language: LangEng(),
          official: "Commonwealth of the Bahamas",
          common: "Bahamas",
        ),
        tld: const [".bs"],
        code: "BHS",
        codeNumeric: "044",
        codeShort: "BS",
        cioc: "BAH",
        idd: const Idd(root: 1, suffixes: [242]),
        altSpellings: const ["BS", "Commonwealth of the Bahamas"],
        continent: const Americas(),
        subregion: const Caribbean(),
        latLng: const LatLng(25.0343, -77.3963),
        areaMetric: 13943,
        emoji: "🇧🇸",
        maps: const Maps(
          googleMaps: "1YzRs1BZrG8p8pmVA",
          openStreetMaps: "relation/547469",
        ),
        population: 412628,
        fifa: "BAH",
        car: const Car(sign: "BS", isRightSide: false),
        timezones: const ["UTC-05:00"],
      );
  @override
  List<FiatCurrency> get currencies => const [FiatBsd(), FiatUsd()];
  @override
  CapitalInfo get capitalInfo => const CapitalInfo(
    capital: Capital("Nassau"),
    latLng: LatLng(25.08, -77.35),
  );
  @override
  List<RegionalBloc> get regionalBlocs => const [BlocCARICOM()];
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(language: LangEng(), female: "Bahamian", male: "Bahamian"),
    Demonyms(language: LangFra(), female: "Bahamienne", male: "Bahamien"),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(
      language: LangEng(),
      official: "Commonwealth of the Bahamas",
      common: "Bahamas",
    ),
  ];
  @override
  List<NaturalLanguage> get languages => const [LangEng()];
}
