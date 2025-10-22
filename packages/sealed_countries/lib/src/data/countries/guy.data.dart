// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/country.dart";

extension type const _GuyFactory._(CountryGuy _) implements CountryGuy {
  const _GuyFactory() : this._(const CountryGuy._());
}

/// A class that represents the Guyana country.
class CountryGuy extends WorldCountry {
  /// {@template sealed_world.country_guy_constructor}
  /// Creates a instance of [CountryGuy] (Guyana country).
  ///
  /// ISO 3166-1 Alpha-3 code: `GUY`, ISO 3166-1 Alpha-2 code: `GY`.
  /// {@endtemplate}
  const factory CountryGuy() = _GuyFactory;

  const CountryGuy._()
    : super(
        name: const CountryName(
          language: LangEng(),
          official: "Co-operative Republic of Guyana",
          common: "Guyana",
        ),
        tld: const [".gy"],
        code: "GUY",
        codeNumeric: "328",
        codeShort: "GY",
        cioc: "GUY",
        idd: const Idd(root: 5, suffixes: [92]),
        altSpellings: const ["GY", "Co-operative Republic of Guyana"],
        continent: const Americas(),
        subregion: const SouthAmerica(),
        latLng: const LatLng(5, -59),
        bordersCodes: const ["Bra", "Sur", "Ven"],
        areaMetric: 214969,
        emoji: "🇬🇾",
        maps: const Maps(
          googleMaps: "DFsme2xEeugUAsCx5",
          openStreetMaps: "relation/287083",
        ),
        population: 835986,
        gini: const Gini(year: 1998, coefficient: 45.1),
        fifa: "GUY",
        car: const Car(sign: "GUY", isRightSide: false),
        timezones: const ["UTC-04:00"],
      );
  @override
  List<FiatCurrency> get currencies => const [FiatGyd()];
  @override
  CapitalInfo get capitalInfo => const CapitalInfo(
    capital: Capital("Georgetown"),
    latLng: LatLng(6.8, -58.15),
  );
  @override
  List<RegionalBloc> get regionalBlocs => const [BlocCARICOM(), BlocUSAN()];
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(language: LangEng(), female: "Guyanese", male: "Guyanese"),
    Demonyms(language: LangFra(), female: "Guyanienne", male: "Guyanien"),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(
      language: LangEng(),
      official: "Co-operative Republic of Guyana",
      common: "Guyana",
    ),
  ];
  @override
  List<NaturalLanguage> get languages => const [LangEng()];
}
