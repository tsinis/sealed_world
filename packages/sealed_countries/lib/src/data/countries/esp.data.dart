// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/country.dart";

/// A class that represents the the Spain country.
class CountryEsp extends WorldCountry {
  /// {@template sealed_world.countries_esp_constructor}}
  /// Creates a instance of [CountryEsp] (Spain country).
  ///
  /// ISO 3166-1 Alpha-3 code: `ESP`, ISO 3166-1 Alpha-2 code: `ES`.
  /// {@endtemplate}
  const factory CountryEsp() = _EspFactory;

  const CountryEsp._()
    : super(
        name: const CountryName(
          language: LangEng(),
          official: "Kingdom of Spain",
          common: "Spain",
        ),
        tld: const [".es"],
        code: "ESP",
        codeNumeric: "724",
        codeShort: "ES",
        cioc: "ESP",
        idd: const Idd(root: 3, suffixes: [4]),
        altSpellings: const ["ES", "Kingdom of Spain", "Reino de España"],
        continent: const Europe(),
        subregion: const SouthernEurope(),
        latLng: const LatLng(40, -4),
        bordersCodes: const ["And", "Fra", "Gib", "Prt", "Mar"],
        areaMetric: 505992,
        emoji: "🇪🇸",
        maps: const Maps(
          googleMaps: "138JaXW8EZzRVitY9",
          openStreetMaps: "relation/1311341",
        ),
        population: 49153849,
        gini: const Gini(year: 2022, coefficient: 33.6),
        fifa: "ESP",
        car: const Car(sign: "E"),
        timezones: const ["UTC+00:00", "UTC+01:00"],
        postalCode: const PostalCode(),
      );
  @override
  List<FiatCurrency> get currencies => const [FiatEur()];
  @override
  CapitalInfo get capitalInfo => const CapitalInfo(
    capital: Capital("Madrid"),
    latLng: LatLng(40.4, -3.68),
  );
  @override
  List<RegionalBloc> get regionalBlocs => const [BlocEU()];
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(language: LangEng(), female: "Spanish", male: "Spanish"),
    Demonyms(language: LangFra(), female: "Espagnole", male: "Espagnol"),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(
      language: LangSpa(),
      official: "Reino de España",
      common: "España",
    ),
  ];
  @override
  List<NaturalLanguage> get languages => const [LangSpa()];
}

extension type const _EspFactory._(CountryEsp _) implements CountryEsp {
  const _EspFactory() : this._(const CountryEsp._());
}
