// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/submodels/world_country.dart";

extension type const _GinFactory._(CountryGin _) implements CountryGin {
  const new() : this._(const CountryGin._());
}

/// A class that represents the Guinea country.
class CountryGin extends WorldCountry {
  /// {@template sealed_world.country_gin_constructor}
  /// Creates a instance of [CountryGin] (Guinea country).
  ///
  /// ISO 3166-1 Alpha-3 code: `GIN`, ISO 3166-1 Alpha-2 code: `GN`.
  /// {@endtemplate}
  const factory() = _GinFactory;

  const new _()
    : super._(
        name: const CountryName(
          language: LangEng(),
          official: "Republic of Guinea",
          common: "Guinea",
        ),
        tld: const [".gn"],
        code: "GIN",
        codeNumeric: "324",
        codeShort: "GN",
        cioc: "GUI",
        idd: const Idd(root: 2, suffixes: [24]),
        altSpellings: const [
          "GN",
          "Republic of Guinea",
          "République de Guinée",
        ],
        continent: const Africa(),
        subregion: const WesternAfrica(),
        latLng: const LatLng(11, -10),
        bordersCodes: const ["Civ", "Gnb", "Lbr", "Mli", "Sen", "Sle"],
        areaMetric: 245857,
        emoji: "🇬🇳",
        maps: const Maps(
          googleMaps: "8J5oM5sA4Ayr1ZYGA",
          openStreetMaps: "relation/192778",
        ),
        population: 13986179,
        gini: const Gini(year: 2012, coefficient: 33.7),
        fifa: "GUI",
        car: const Car(sign: "RG"),
        timezones: const ["UTC+00:00"],
      );
  @override
  List<FiatCurrency> get currencies => const [FiatGnf()];
  @override
  CapitalInfo get capitalInfo => const CapitalInfo(
    capital: Capital("Conakry"),
    latLng: LatLng(9.5, -13.7),
  );
  @override
  List<RegionalBloc> get regionalBlocs => const [BlocAU()];
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(language: LangEng(), female: "Guinean", male: "Guinean"),
    Demonyms(language: LangFra(), female: "Guinéenne", male: "Guinéen"),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(
      language: LangFra(),
      official: "République de Guinée",
      common: "Guinée",
    ),
  ];
  @override
  List<NaturalLanguage> get languages => const [LangFra()];
}
