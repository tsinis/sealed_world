// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/country.dart";

extension type const _EstFactory._(CountryEst _) implements CountryEst {
  const _EstFactory() : this._(const CountryEst._());
}

/// A class that represents the Estonia country.
class CountryEst extends WorldCountry {
  /// {@template sealed_world.country_est_constructor}
  /// Creates a instance of [CountryEst] (Estonia country).
  ///
  /// ISO 3166-1 Alpha-3 code: `EST`, ISO 3166-1 Alpha-2 code: `EE`.
  /// {@endtemplate}
  const factory CountryEst() = _EstFactory;

  const CountryEst._()
    : super(
        name: const CountryName(
          language: LangEng(),
          official: "Republic of Estonia",
          common: "Estonia",
        ),
        tld: const [".ee"],
        code: "EST",
        codeNumeric: "233",
        codeShort: "EE",
        cioc: "EST",
        idd: const Idd(root: 3, suffixes: [72]),
        altSpellings: const [
          "EE",
          "Eesti",
          "Republic of Estonia",
          "Eesti Vabariik",
        ],
        continent: const Europe(),
        subregion: const NorthernEurope(),
        latLng: const LatLng(59, 26),
        bordersCodes: const ["Lva", "Rus"],
        areaMetric: 45227,
        emoji: "🇪🇪",
        maps: const Maps(
          googleMaps: "6SsynwGUodL1sDvq8",
          openStreetMaps: "relation/79510",
        ),
        population: 1331824,
        gini: const Gini(year: 2018, coefficient: 30.3),
        fifa: "EST",
        car: const Car(sign: "EST"),
        timezones: const ["UTC+02:00"],
        postalCode: const PostalCode(),
      );
  @override
  List<FiatCurrency> get currencies => const [FiatEur()];
  @override
  CapitalInfo get capitalInfo => const CapitalInfo(
    capital: Capital("Tallinn"),
    latLng: LatLng(59.43, 24.72),
  );
  @override
  List<RegionalBloc> get regionalBlocs => const [BlocEU()];
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(language: LangEng(), female: "Estonian", male: "Estonian"),
    Demonyms(language: LangFra(), female: "Estonienne", male: "Estonien"),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(
      language: LangEst(),
      official: "Eesti Vabariik",
      common: "Eesti",
    ),
  ];
  @override
  List<NaturalLanguage> get languages => const [LangEst()];
}
