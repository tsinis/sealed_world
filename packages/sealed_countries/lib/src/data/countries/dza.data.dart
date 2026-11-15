// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/submodels/world_country.dart";

extension type const _DzaFactory._(CountryDza _) implements CountryDza {
  const new() : this._(const CountryDza._());
}

/// A class that represents the Algeria country.
class CountryDza extends WorldCountry {
  /// {@template sealed_world.country_dza_constructor}
  /// Creates a instance of [CountryDza] (Algeria country).
  ///
  /// ISO 3166-1 Alpha-3 code: `DZA`, ISO 3166-1 Alpha-2 code: `DZ`.
  /// {@endtemplate}
  const factory() = _DzaFactory;

  const new _()
    : super._(
        name: const CountryName(
          language: LangEng(),
          official: "People's Democratic Republic of Algeria",
          common: "Algeria",
        ),
        tld: const [".dz", "الجزائر."],
        code: "DZA",
        codeNumeric: "012",
        codeShort: "DZ",
        cioc: "ALG",
        idd: const Idd(root: 2, suffixes: [13]),
        altSpellings: const ["DZ", "Dzayer", "Algérie"],
        continent: const Africa(),
        subregion: const NorthernAfrica(),
        latLng: const LatLng(28, 3),
        bordersCodes: const ["Tun", "Lby", "Ner", "Esh", "Mrt", "Mli", "Mar"],
        areaMetric: 2381741,
        emoji: "🇩🇿",
        maps: const Maps(
          googleMaps: "RsAyAfyaiNVb8DpW8",
          openStreetMaps: "relation/192756",
        ),
        population: 47400000,
        gini: const Gini(year: 2011, coefficient: 27.6),
        fifa: "ALG",
        car: const Car(sign: "DZ"),
        timezones: const ["UTC+01:00"],
        startOfWeek: Weekday.sunday,
        postalCode: const PostalCode(),
      );
  @override
  List<FiatCurrency> get currencies => const [FiatDzd()];
  @override
  CapitalInfo get capitalInfo => const CapitalInfo(
    capital: Capital("Algiers"),
    latLng: LatLng(36.75, 3.05),
  );
  @override
  List<RegionalBloc> get regionalBlocs => const [BlocAU(), BlocAL()];
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(language: LangEng(), female: "Algerian", male: "Algerian"),
    Demonyms(language: LangFra(), female: "Algérienne", male: "Algérien"),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(
      language: LangAra(),
      official: "الجمهورية الديمقراطية الشعبية الجزائرية",
      common: "الجزائر",
    ),
  ];
  @override
  List<NaturalLanguage> get languages => const [LangAra()];
}
