// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/country.dart";

/// A class that represents the the Monaco country.
class CountryMco extends WorldCountry {
  /// {@template sealed_world.countries_mco_constructor}}
  /// Creates a instance of [CountryMco] (Monaco country).
  ///
  /// ISO 3166-1 Alpha-3 code: `MCO`, ISO 3166-1 Alpha-2 code: `MC`.
  /// {@endtemplate}
  const factory CountryMco() = _McoFactory;

  const CountryMco._()
    : super(
        name: const CountryName(
          language: LangEng(),
          official: "Principality of Monaco",
          common: "Monaco",
        ),
        tld: const [".mc"],
        code: "MCO",
        codeNumeric: "492",
        codeShort: "MC",
        cioc: "MON",
        idd: const Idd(root: 3, suffixes: [77]),
        altSpellings: const [
          "MC",
          "Principality of Monaco",
          "Principauté de Monaco",
        ],
        continent: const Europe(),
        subregion: const WesternEurope(),
        latLng: const LatLng(43.73333333, 7.4),
        bordersCodes: const ["Fra"],
        areaMetric: 2.02,
        emoji: "🇲🇨",
        maps: const Maps(
          googleMaps: "DGpndDot28bYdXYn7",
          openStreetMaps: "relation/1124039",
        ),
        population: 38423,
        car: const Car(sign: "MC"),
        timezones: const ["UTC+01:00"],
        postalCode: const PostalCode(),
      );
  @override
  List<FiatCurrency> get currencies => const [FiatEur()];
  @override
  CapitalInfo get capitalInfo => const CapitalInfo(
    capital: Capital("Monaco"),
    latLng: LatLng(43.73, 7.42),
  );
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(language: LangEng(), female: "Monegasque", male: "Monegasque"),
    Demonyms(language: LangFra(), female: "Monégasque", male: "Monégasque"),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(
      language: LangFra(),
      official: "Principauté de Monaco",
      common: "Monaco",
    ),
  ];
  @override
  List<NaturalLanguage> get languages => const [LangFra()];
}

extension type const _McoFactory._(CountryMco _) implements CountryMco {
  const _McoFactory() : this._(const CountryMco._());
}
