// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/submodels/world_country.dart";

extension type const _CzeFactory._(CountryCze _) implements CountryCze {
  const new() : this._(const CountryCze._());
}

/// A class that represents the Czechia country.
class CountryCze extends WorldCountry {
  /// {@template sealed_world.country_cze_constructor}
  /// Creates a instance of [CountryCze] (Czechia country).
  ///
  /// ISO 3166-1 Alpha-3 code: `CZE`, ISO 3166-1 Alpha-2 code: `CZ`.
  /// {@endtemplate}
  const factory() = _CzeFactory;

  const new _()
    : super._(
        name: const CountryName(
          language: LangEng(),
          official: "Czech Republic",
          common: "Czechia",
        ),
        tld: const [".cz"],
        code: "CZE",
        codeNumeric: "203",
        codeShort: "CZ",
        cioc: "CZE",
        idd: const Idd(root: 4, suffixes: [20]),
        altSpellings: const ["CZ", "Česká republika", "Česko"],
        continent: const Europe(),
        subregion: const CentralEurope(),
        latLng: const LatLng(49.75, 15.5),
        landlocked: true,
        bordersCodes: const ["Aut", "Deu", "Pol", "Svk"],
        areaMetric: 78865,
        emoji: "🇨🇿",
        maps: const Maps(
          googleMaps: "47dmgeXMZyhDHyQW8",
          openStreetMaps: "relation/51684",
        ),
        population: 10524167,
        gini: const Gini(year: 2018, coefficient: 25),
        fifa: "CZE",
        car: const Car(sign: "CZ"),
        timezones: const ["UTC+01:00"],
        postalCode: const PostalCode(format: "### ##"),
      );
  @override
  List<FiatCurrency> get currencies => const [FiatCzk()];
  @override
  CapitalInfo get capitalInfo => const CapitalInfo(
    capital: Capital("Prague"),
    latLng: LatLng(50.08, 14.47),
  );
  @override
  List<RegionalBloc> get regionalBlocs => const [BlocEU()];
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(language: LangEng(), female: "Czech", male: "Czech"),
    Demonyms(language: LangFra(), female: "Tchèque", male: "Tchèque"),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(
      language: LangCes(),
      official: "Česká republika",
      common: "Česko",
    ),
  ];
  @override
  List<NaturalLanguage> get languages => const [LangCes()];
}
