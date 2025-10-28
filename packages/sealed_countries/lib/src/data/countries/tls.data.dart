// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/country.dart";

extension type const _TlsFactory._(CountryTls _) implements CountryTls {
  const _TlsFactory() : this._(const CountryTls._());
}

/// A class that represents the Timor-Leste country.
class CountryTls extends WorldCountry {
  /// {@template sealed_world.country_tls_constructor}
  /// Creates a instance of [CountryTls] (Timor-Leste country).
  ///
  /// ISO 3166-1 Alpha-3 code: `TLS`, ISO 3166-1 Alpha-2 code: `TL`.
  /// {@endtemplate}
  const factory CountryTls() = _TlsFactory;

  const CountryTls._()
    : super(
        name: const CountryName(
          language: LangEng(),
          official: "Democratic Republic of Timor-Leste",
          common: "Timor-Leste",
        ),
        tld: const [".tl"],
        code: "TLS",
        codeNumeric: "626",
        codeShort: "TL",
        cioc: "TLS",
        idd: const Idd(root: 6, suffixes: [70]),
        altSpellings: const [
          "TL",
          "East Timor",
          "Democratic Republic of Timor-Leste",
          "República Democrática de Timor-Leste",
          "Repúblika Demokrátika Timór-Leste",
          "Timór Lorosa'e",
          "Timor Lorosae",
        ],
        continent: const Asia(),
        subregion: const SouthEasternAsia(),
        latLng: const LatLng(-8.83333333, 125.91666666),
        bordersCodes: const ["Idn"],
        areaMetric: 14874,
        emoji: "🇹🇱",
        maps: const Maps(
          googleMaps: "sFqBC9zjgUXPR1iTA",
          openStreetMaps: "relation/305142",
        ),
        population: 1318442,
        gini: const Gini(year: 2014, coefficient: 28.7),
        fifa: "TLS",
        car: const Car(sign: "TL", isRightSide: false),
        timezones: const ["UTC+09:00"],
        hasCoatOfArms: false,
      );
  @override
  List<FiatCurrency> get currencies => const [FiatUsd()];
  @override
  CapitalInfo get capitalInfo =>
      const CapitalInfo(capital: Capital("Dili"), latLng: LatLng(-8.58, 125.6));
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(
      language: LangEng(),
      female: "East Timorese",
      male: "East Timorese",
    ),
    Demonyms(
      language: LangFra(),
      female: "Est-timoraise",
      male: "Est-timorais",
    ),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(
      language: LangPor(),
      official: "República Democrática de Timor-Leste",
      common: "Timor-Leste",
    ),
  ];
  @override
  List<NaturalLanguage> get languages => const [LangPor()];
}
