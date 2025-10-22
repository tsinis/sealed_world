// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/country.dart";

extension type const _UryFactory._(CountryUry _) implements CountryUry {
  const _UryFactory() : this._(const CountryUry._());
}

/// A class that represents the the Uruguay country.
class CountryUry extends WorldCountry {
  /// {@template sealed_world.country_ury_constructor}
  /// Creates a instance of [CountryUry] (Uruguay country).
  ///
  /// ISO 3166-1 Alpha-3 code: `URY`, ISO 3166-1 Alpha-2 code: `UY`.
  /// {@endtemplate}
  const factory CountryUry() = _UryFactory;

  const CountryUry._()
    : super(
        name: const CountryName(
          language: LangEng(),
          official: "Oriental Republic of Uruguay",
          common: "Uruguay",
        ),
        tld: const [".uy"],
        code: "URY",
        codeNumeric: "858",
        codeShort: "UY",
        cioc: "URU",
        idd: const Idd(root: 5, suffixes: [98]),
        altSpellings: const [
          "UY",
          "Oriental Republic of Uruguay",
          "República Oriental del Uruguay",
        ],
        continent: const Americas(),
        subregion: const SouthAmerica(),
        latLng: const LatLng(-33, -56),
        bordersCodes: const ["Arg", "Bra"],
        areaMetric: 181034,
        emoji: "🇺🇾",
        maps: const Maps(
          googleMaps: "tiQ9Baekb1jQtDSD9",
          openStreetMaps: "relation/287072",
        ),
        population: 3473727,
        gini: const Gini(year: 2019, coefficient: 39.7),
        fifa: "URU",
        car: const Car(sign: "ROU"),
        timezones: const ["UTC-03:00"],
        postalCode: const PostalCode(),
      );
  @override
  List<FiatCurrency> get currencies => const [FiatUyu()];
  @override
  CapitalInfo get capitalInfo => const CapitalInfo(
    capital: Capital("Montevideo"),
    latLng: LatLng(-34.85, -56.17),
  );
  @override
  List<RegionalBloc> get regionalBlocs => const [BlocUSAN()];
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(language: LangEng(), female: "Uruguayan", male: "Uruguayan"),
    Demonyms(language: LangFra(), female: "Uruguayenne", male: "Uruguayen"),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(
      language: LangSpa(),
      official: "República Oriental del Uruguay",
      common: "Uruguay",
    ),
  ];
  @override
  List<NaturalLanguage> get languages => const [LangSpa()];
}
