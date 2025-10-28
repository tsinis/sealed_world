// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/country.dart";

extension type const _MliFactory._(CountryMli _) implements CountryMli {
  const _MliFactory() : this._(const CountryMli._());
}

/// A class that represents the Mali country.
class CountryMli extends WorldCountry {
  /// {@template sealed_world.country_mli_constructor}
  /// Creates a instance of [CountryMli] (Mali country).
  ///
  /// ISO 3166-1 Alpha-3 code: `MLI`, ISO 3166-1 Alpha-2 code: `ML`.
  /// {@endtemplate}
  const factory CountryMli() = _MliFactory;

  const CountryMli._()
    : super(
        name: const CountryName(
          language: LangEng(),
          official: "Republic of Mali",
          common: "Mali",
        ),
        tld: const [".ml"],
        code: "MLI",
        codeNumeric: "466",
        codeShort: "ML",
        cioc: "MLI",
        idd: const Idd(root: 2, suffixes: [23]),
        altSpellings: const ["ML", "Republic of Mali", "République du Mali"],
        continent: const Africa(),
        subregion: const WesternAfrica(),
        latLng: const LatLng(17, -4),
        landlocked: true,
        bordersCodes: const ["Dza", "Bfa", "Gin", "Civ", "Mrt", "Ner", "Sen"],
        areaMetric: 1240192,
        emoji: "🇲🇱",
        maps: const Maps(
          googleMaps: "u9mYJkCB19wyuzh27",
          openStreetMaps: "relation/192785",
        ),
        population: 21990607,
        gini: const Gini(year: 2009, coefficient: 33),
        fifa: "MLI",
        car: const Car(sign: "RMM"),
        timezones: const ["UTC+00:00"],
      );
  @override
  List<FiatCurrency> get currencies => const [FiatXof()];
  @override
  CapitalInfo get capitalInfo =>
      const CapitalInfo(capital: Capital("Bamako"), latLng: LatLng(12.65, -8));
  @override
  List<RegionalBloc> get regionalBlocs => const [BlocAU()];
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(language: LangEng(), female: "Malian", male: "Malian"),
    Demonyms(language: LangFra(), female: "Malienne", male: "Malien"),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(
      language: LangFra(),
      official: "République du Mali",
      common: "Mali",
    ),
  ];
  @override
  List<NaturalLanguage> get languages => const [LangFra()];
}
