// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/submodels/world_country.dart";

extension type const _VenFactory._(CountryVen _) implements CountryVen {
  const _VenFactory() : this._(const CountryVen._());
}

/// A class that represents the Venezuela country.
class CountryVen extends WorldCountry {
  /// {@template sealed_world.country_ven_constructor}
  /// Creates a instance of [CountryVen] (Venezuela country).
  ///
  /// ISO 3166-1 Alpha-3 code: `VEN`, ISO 3166-1 Alpha-2 code: `VE`.
  /// {@endtemplate}
  const factory CountryVen() = _VenFactory;

  const CountryVen._()
    : super._(
        name: const CountryName(
          language: LangEng(),
          official: "Bolivarian Republic of Venezuela",
          common: "Venezuela",
        ),
        tld: const [".ve"],
        code: "VEN",
        codeNumeric: "862",
        codeShort: "VE",
        cioc: "VEN",
        idd: const Idd(root: 5, suffixes: [8]),
        altSpellings: const [
          "VE",
          "Bolivarian Republic of Venezuela",
          "Venezuela, Bolivarian Republic of",
          "República Bolivariana de Venezuela",
        ],
        continent: const Americas(),
        subregion: const SouthAmerica(),
        latLng: const LatLng(8, -66),
        bordersCodes: const ["Bra", "Col", "Guy"],
        areaMetric: 916445,
        emoji: "🇻🇪",
        maps: const Maps(
          googleMaps: "KLCwDN8sec7z2kse9",
          openStreetMaps: "relation/272644",
        ),
        population: 28435943,
        gini: const Gini(year: 2006, coefficient: 44.8),
        fifa: "VEN",
        car: const Car(sign: "YV"),
        timezones: const ["UTC-04:00"],
        postalCode: const PostalCode(
          format: "####",
          regExpPattern: r"^(\d{4})$",
        ),
      );
  @override
  List<FiatCurrency> get currencies => const [FiatVes()];
  @override
  CapitalInfo get capitalInfo => const CapitalInfo(
    capital: Capital("Caracas"),
    latLng: LatLng(10.48, -66.87),
  );
  @override
  List<RegionalBloc> get regionalBlocs => const [BlocUSAN()];
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(language: LangEng(), female: "Venezuelan", male: "Venezuelan"),
    Demonyms(language: LangFra(), female: "Vénézuélienne", male: "Vénézuélien"),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(
      language: LangSpa(),
      official: "República Bolivariana de Venezuela",
      common: "Venezuela",
    ),
  ];
  @override
  List<NaturalLanguage> get languages => const [LangSpa()];
}
