// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/submodels/world_country.dart";

extension type const _CpvFactory._(CountryCpv _) implements CountryCpv {
  const _CpvFactory() : this._(const CountryCpv._());
}

/// A class that represents the Cape Verde country.
class CountryCpv extends WorldCountry {
  /// {@template sealed_world.country_cpv_constructor}
  /// Creates a instance of [CountryCpv] (Cape Verde country).
  ///
  /// ISO 3166-1 Alpha-3 code: `CPV`, ISO 3166-1 Alpha-2 code: `CV`.
  /// {@endtemplate}
  const factory CountryCpv() = _CpvFactory;

  const CountryCpv._()
    : super._(
        name: const CountryName(
          language: LangEng(),
          official: "Republic of Cabo Verde",
          common: "Cape Verde",
        ),
        tld: const [".cv"],
        code: "CPV",
        codeNumeric: "132",
        codeShort: "CV",
        cioc: "CPV",
        idd: const Idd(root: 2, suffixes: [38]),
        altSpellings: const [
          "CV",
          "Republic of Cabo Verde",
          "República de Cabo Verde",
        ],
        continent: const Africa(),
        subregion: const WesternAfrica(),
        latLng: const LatLng(16.5388, -23.0418),
        areaMetric: 4033,
        emoji: "🇨🇻",
        maps: const Maps(
          googleMaps: "Kc9vy5ChjuiAgMfXA",
          openStreetMaps: "relation/535774",
        ),
        population: 593149,
        gini: const Gini(year: 2015, coefficient: 42.4),
        fifa: "CPV",
        car: const Car(sign: "CV"),
        timezones: const ["UTC-01:00"],
        postalCode: const PostalCode(
          format: "####",
          regExpPattern: r"^(\d{4})$",
        ),
      );
  @override
  List<FiatCurrency> get currencies => const [FiatCve()];
  @override
  CapitalInfo get capitalInfo => const CapitalInfo(
    capital: Capital("Praia"),
    latLng: LatLng(14.92, -23.52),
  );
  @override
  List<RegionalBloc> get regionalBlocs => const [BlocAU()];
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(language: LangEng(), female: "Cape Verdian", male: "Cape Verdian"),
    Demonyms(language: LangFra(), female: "Cap-verdienne", male: "Cap-verdien"),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(
      language: LangPor(),
      official: "República de Cabo Verde",
      common: "Cabo Verde",
    ),
  ];
  @override
  List<NaturalLanguage> get languages => const [LangPor()];
}
