// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/country.dart";

extension type const _CafFactory._(CountryCaf _) implements CountryCaf {
  const _CafFactory() : this._(const CountryCaf._());
}

/// A class that represents the Central African Republic country.
class CountryCaf extends WorldCountry {
  /// {@template sealed_world.country_caf_constructor}
  /// Creates a instance of [CountryCaf] (Central African Republic country).
  ///
  /// ISO 3166-1 Alpha-3 code: `CAF`, ISO 3166-1 Alpha-2 code: `CF`.
  /// {@endtemplate}
  const factory CountryCaf() = _CafFactory;

  const CountryCaf._()
    : super(
        name: const CountryName(
          language: LangEng(),
          official: "Central African Republic",
          common: "Central African Republic",
        ),
        tld: const [".cf"],
        code: "CAF",
        codeNumeric: "140",
        codeShort: "CF",
        cioc: "CAF",
        idd: const Idd(root: 2, suffixes: [36]),
        altSpellings: const [
          "CF",
          "Central African Republic",
          "République centrafricaine",
        ],
        continent: const Africa(),
        subregion: const MiddleAfrica(),
        latLng: const LatLng(7, 21),
        landlocked: true,
        bordersCodes: const ["Cmr", "Tcd", "Cod", "Cog", "Ssd", "Sdn"],
        areaMetric: 622984,
        emoji: "🇨🇫",
        maps: const Maps(
          googleMaps: "51V8dsi2rGYC9n3c9",
          openStreetMaps: "relation/192790",
        ),
        population: 5650957,
        gini: const Gini(year: 2008, coefficient: 56.2),
        fifa: "CTA",
        car: const Car(sign: "RCA"),
        timezones: const ["UTC+01:00"],
      );
  @override
  List<FiatCurrency> get currencies => const [FiatXaf()];
  @override
  CapitalInfo get capitalInfo => const CapitalInfo(
    capital: Capital("Bangui"),
    latLng: LatLng(4.37, 18.58),
  );
  @override
  List<RegionalBloc> get regionalBlocs => const [BlocAU()];
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(
      language: LangEng(),
      female: "Central African",
      male: "Central African",
    ),
    Demonyms(
      language: LangFra(),
      female: "Centrafricaine",
      male: "Centrafricain",
    ),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(
      language: LangFra(),
      official: "République centrafricaine",
      common: "République centrafricaine",
    ),
    CountryName(
      language: LangSag(),
      official: "Ködörösêse tî Bêafrîka",
      common: "Bêafrîka",
    ),
  ];
  @override
  List<NaturalLanguage> get languages => const [LangFra(), LangSag()];
}
