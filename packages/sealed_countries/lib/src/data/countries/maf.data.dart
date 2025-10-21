// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/country.dart";

/// A class that represents the the Saint Martin country.
class CountryMaf extends WorldCountry {
  /// {@template sealed_world.countries_maf_constructor}}
  /// Creates a instance of [CountryMaf] (Saint Martin country).
  ///
  /// ISO 3166-1 Alpha-3 code: `MAF`, ISO 3166-1 Alpha-2 code: `MF`.
  /// {@endtemplate}
  const factory CountryMaf() = _MafFactory;

  const CountryMaf._()
    : super(
        name: const CountryName(
          language: LangEng(),
          official: "Collectivity of Saint Martin",
          common: "Saint Martin",
        ),
        tld: const [".fr", ".gp"],
        code: "MAF",
        codeNumeric: "663",
        codeShort: "MF",
        independent: false,
        unMember: false,
        idd: const Idd(root: 5, suffixes: [90]),
        altSpellings: const [
          "MF",
          "Collectivity of Saint Martin",
          "Collectivité de Saint-Martin",
          "Saint Martin (French part)",
        ],
        continent: const Americas(),
        subregion: const Caribbean(),
        latLng: const LatLng(18.0708, -63.0501),
        bordersCodes: const ["Sxm"],
        areaMetric: 53,
        emoji: "🇲🇫",
        maps: const Maps(
          googleMaps: "P9ho9QuJ9EAR28JEA",
          openStreetMaps: "relation/63064",
        ),
        population: 31477,
        car: const Car(sign: "F"),
        timezones: const ["UTC-04:00"],
        hasCoatOfArms: false,
        postalCode: const PostalCode(),
      );
  @override
  List<FiatCurrency> get currencies => const [FiatEur()];
  @override
  CapitalInfo get capitalInfo => const CapitalInfo(
    capital: Capital("Marigot"),
    latLng: LatLng(18.07, -63.08),
  );
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(
      language: LangEng(),
      female: "Saint Martin Islander",
      male: "Saint Martin Islander",
    ),
    Demonyms(
      language: LangFra(),
      female: "Saint-Martinoise",
      male: "Saint-Martinois",
    ),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(
      language: LangFra(),
      official: "Collectivité de Saint-Martin",
      common: "Saint-Martin",
    ),
  ];
  @override
  List<NaturalLanguage> get languages => const [LangFra()];
}

extension type const _MafFactory._(CountryMaf _) implements CountryMaf {
  const _MafFactory() : this._(const CountryMaf._());
}
