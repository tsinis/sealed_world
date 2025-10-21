// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/country.dart";

/// A class that represents the the Saint Lucia country.
class CountryLca extends WorldCountry {
  /// {@template sealed_world.countries_lca_constructor}}
  /// Creates a instance of [CountryLca] (Saint Lucia country).
  ///
  /// ISO 3166-1 Alpha-3 code: `LCA`, ISO 3166-1 Alpha-2 code: `LC`.
  /// {@endtemplate}
  const factory CountryLca() = _LcaFactory;

  const CountryLca._()
    : super(
        name: const CountryName(
          language: LangEng(),
          official: "Saint Lucia",
          common: "Saint Lucia",
        ),
        tld: const [".lc"],
        code: "LCA",
        codeNumeric: "662",
        codeShort: "LC",
        cioc: "LCA",
        idd: const Idd(root: 1, suffixes: [758]),
        altSpellings: const ["LC"],
        continent: const Americas(),
        subregion: const Caribbean(),
        latLng: const LatLng(13.88333333, -60.96666666),
        areaMetric: 616,
        emoji: "🇱🇨",
        maps: const Maps(
          googleMaps: "4HhJ2jkPdSL9BPRcA",
          openStreetMaps: "relation/550728",
        ),
        population: 183629,
        gini: const Gini(year: 2016, coefficient: 51.2),
        fifa: "LCA",
        car: const Car(sign: "WL", isRightSide: false),
        timezones: const ["UTC-04:00"],
      );
  @override
  List<FiatCurrency> get currencies => const [FiatXcd()];
  @override
  CapitalInfo get capitalInfo =>
      const CapitalInfo(capital: Capital("Castries"), latLng: LatLng(14, -61));
  @override
  List<RegionalBloc> get regionalBlocs => const [BlocCARICOM()];
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(language: LangEng(), female: "Saint Lucian", male: "Saint Lucian"),
    Demonyms(
      language: LangFra(),
      female: "Saint-Lucienne",
      male: "Saint-Lucien",
    ),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(
      language: LangEng(),
      official: "Saint Lucia",
      common: "Saint Lucia",
    ),
  ];
  @override
  List<NaturalLanguage> get languages => const [LangEng()];
}

extension type const _LcaFactory._(CountryLca _) implements CountryLca {
  const _LcaFactory() : this._(const CountryLca._());
}
