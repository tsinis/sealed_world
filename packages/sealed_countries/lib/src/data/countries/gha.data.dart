// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/country.dart";

extension type const _GhaFactory._(CountryGha _) implements CountryGha {
  const _GhaFactory() : this._(const CountryGha._());
}

/// A class that represents the the Ghana country.
class CountryGha extends WorldCountry {
  /// {@template sealed_world.country_gha_constructor}
  /// Creates a instance of [CountryGha] (Ghana country).
  ///
  /// ISO 3166-1 Alpha-3 code: `GHA`, ISO 3166-1 Alpha-2 code: `GH`.
  /// {@endtemplate}
  const factory CountryGha() = _GhaFactory;

  const CountryGha._()
    : super(
        name: const CountryName(
          language: LangEng(),
          official: "Republic of Ghana",
          common: "Ghana",
        ),
        tld: const [".gh"],
        code: "GHA",
        codeNumeric: "288",
        codeShort: "GH",
        cioc: "GHA",
        idd: const Idd(root: 2, suffixes: [33]),
        altSpellings: const ["GH"],
        continent: const Africa(),
        subregion: const WesternAfrica(),
        latLng: const LatLng(8, -2),
        bordersCodes: const ["Bfa", "Civ", "Tgo"],
        areaMetric: 238533,
        emoji: "🇬🇭",
        maps: const Maps(
          googleMaps: "Avy5RSmdsXFBaiXq8",
          openStreetMaps: "relation/192781",
        ),
        population: 35039451,
        gini: const Gini(year: 2016, coefficient: 43.5),
        fifa: "GHA",
        car: const Car(sign: "GH"),
        timezones: const ["UTC+00:00"],
      );
  @override
  List<FiatCurrency> get currencies => const [FiatGhs()];
  @override
  CapitalInfo get capitalInfo =>
      const CapitalInfo(capital: Capital("Accra"), latLng: LatLng(5.55, -0.22));
  @override
  List<RegionalBloc> get regionalBlocs => const [BlocAU()];
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(language: LangEng(), female: "Ghanaian", male: "Ghanaian"),
    Demonyms(language: LangFra(), female: "Ghanéenne", male: "Ghanéen"),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(
      language: LangEng(),
      official: "Republic of Ghana",
      common: "Ghana",
    ),
  ];
  @override
  List<NaturalLanguage> get languages => const [LangEng()];
}
