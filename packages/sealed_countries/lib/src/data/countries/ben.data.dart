// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/submodels/world_country.dart";

extension type const _BenFactory._(CountryBen _) implements CountryBen {
  const new() : this._(const CountryBen._());
}

/// A class that represents the Benin country.
class CountryBen extends WorldCountry {
  /// {@template sealed_world.country_ben_constructor}
  /// Creates a instance of [CountryBen] (Benin country).
  ///
  /// ISO 3166-1 Alpha-3 code: `BEN`, ISO 3166-1 Alpha-2 code: `BJ`.
  /// {@endtemplate}
  const factory() = _BenFactory;

  const new _()
    : super._(
        name: const CountryName(
          language: LangEng(),
          official: "Republic of Benin",
          common: "Benin",
        ),
        tld: const [".bj"],
        code: "BEN",
        codeNumeric: "204",
        codeShort: "BJ",
        cioc: "BEN",
        idd: const Idd(root: 2, suffixes: [29]),
        altSpellings: const ["BJ", "Republic of Benin", "République du Bénin"],
        continent: const Africa(),
        subregion: const WesternAfrica(),
        latLng: const LatLng(9.5, 2.25),
        bordersCodes: const ["Bfa", "Ner", "Nga", "Tgo"],
        areaMetric: 112622,
        emoji: "🇧🇯",
        maps: const Maps(
          googleMaps: "uMw1BsHEXQYgVFFu6",
          openStreetMaps: "relation/192784",
        ),
        population: 13754688,
        gini: const Gini(year: 2015, coefficient: 47.8),
        fifa: "BEN",
        car: const Car(sign: "DY"),
        timezones: const ["UTC+01:00"],
      );
  @override
  List<FiatCurrency> get currencies => const [FiatXof()];
  @override
  CapitalInfo get capitalInfo => const CapitalInfo(
    capital: Capital("Porto-Novo"),
    latLng: LatLng(6.48, 2.62),
  );
  @override
  List<RegionalBloc> get regionalBlocs => const [BlocAU()];
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(language: LangEng(), female: "Beninese", male: "Beninese"),
    Demonyms(language: LangFra(), female: "Béninoise", male: "Béninois"),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(
      language: LangFra(),
      official: "République du Bénin",
      common: "Bénin",
    ),
  ];
  @override
  List<NaturalLanguage> get languages => const [LangFra()];
}
