// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/country.dart";

/// A class that represents the the Netherlands country.
class CountryNld extends WorldCountry {
  /// {@template sealed_world.countries_nld_constructor}}
  /// Creates a instance of [CountryNld] (Netherlands country).
  ///
  /// ISO 3166-1 Alpha-3 code: `NLD`, ISO 3166-1 Alpha-2 code: `NL`.
  /// {@endtemplate}
  const factory CountryNld() = _NldFactory;

  const CountryNld._()
    : super(
        name: const CountryName(
          language: LangEng(),
          official: "Kingdom of the Netherlands",
          common: "Netherlands",
        ),
        tld: const [".nl"],
        code: "NLD",
        codeNumeric: "528",
        codeShort: "NL",
        cioc: "NED",
        idd: const Idd(root: 3, suffixes: [1]),
        altSpellings: const ["NL", "Holland", "Nederland", "The Netherlands"],
        continent: const Europe(),
        subregion: const WesternEurope(),
        latLng: const LatLng(52.5, 5.75),
        bordersCodes: const ["Bel", "Deu"],
        areaMetric: 41850,
        emoji: "🇳🇱",
        maps: const Maps(
          googleMaps: "Hv6zQswGhFxoVVBm6",
          openStreetMaps: "relation/47796",
        ),
        population: 16655799,
        gini: const Gini(year: 2018, coefficient: 28.1),
        fifa: "NED",
        car: const Car(sign: "NL"),
        timezones: const ["UTC+01:00"],
        postalCode: const PostalCode(
          format: "#### @@",
          regExpPattern: r"^(\d{4}[A-Z]{2})$",
        ),
      );
  @override
  List<FiatCurrency> get currencies => const [FiatEur()];
  @override
  CapitalInfo get capitalInfo => const CapitalInfo(
    capital: Capital("Amsterdam"),
    latLng: LatLng(52.35, 4.92),
  );
  @override
  List<RegionalBloc> get regionalBlocs => const [BlocEU()];
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(language: LangEng(), female: "Dutch", male: "Dutch"),
    Demonyms(language: LangFra(), female: "Néerlandaise", male: "Néerlandais"),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(
      language: LangNld(),
      official: "Koninkrijk der Nederlanden",
      common: "Nederland",
    ),
  ];
  @override
  List<NaturalLanguage> get languages => const [LangNld()];
}

extension type const _NldFactory._(CountryNld _) implements CountryNld {
  const _NldFactory() : this._(const CountryNld._());
}
