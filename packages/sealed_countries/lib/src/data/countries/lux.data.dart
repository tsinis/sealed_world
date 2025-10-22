// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/country.dart";

extension type const _LuxFactory._(CountryLux _) implements CountryLux {
  const _LuxFactory() : this._(const CountryLux._());
}

/// A class that represents the the Luxembourg country.
class CountryLux extends WorldCountry {
  /// {@template sealed_world.country_lux_constructor}
  /// Creates a instance of [CountryLux] (Luxembourg country).
  ///
  /// ISO 3166-1 Alpha-3 code: `LUX`, ISO 3166-1 Alpha-2 code: `LU`.
  /// {@endtemplate}
  const factory CountryLux() = _LuxFactory;

  const CountryLux._()
    : super(
        name: const CountryName(
          language: LangEng(),
          official: "Grand Duchy of Luxembourg",
          common: "Luxembourg",
        ),
        tld: const [".lu"],
        code: "LUX",
        codeNumeric: "442",
        codeShort: "LU",
        cioc: "LUX",
        idd: const Idd(root: 3, suffixes: [52]),
        altSpellings: const [
          "LU",
          "Grand Duchy of Luxembourg",
          "Grand-Duché de Luxembourg",
          "Großherzogtum Luxemburg",
          "Groussherzogtum Lëtzebuerg",
        ],
        continent: const Europe(),
        subregion: const WesternEurope(),
        latLng: const LatLng(49.75, 6.16666666),
        landlocked: true,
        bordersCodes: const ["Bel", "Fra", "Deu"],
        areaMetric: 2586,
        emoji: "🇱🇺",
        maps: const Maps(
          googleMaps: "L6b2AgndgHprt2Ko9",
          openStreetMaps: "relation/2171347#map=10/49.8167/6.1335",
        ),
        population: 681973,
        gini: const Gini(year: 2023, coefficient: 30.6),
        fifa: "LUX",
        car: const Car(sign: "L"),
        timezones: const ["UTC+01:00"],
        postalCode: const PostalCode(
          format: "####",
          regExpPattern: r"^(\d{4})$",
        ),
      );
  @override
  List<FiatCurrency> get currencies => const [FiatEur()];
  @override
  CapitalInfo get capitalInfo => const CapitalInfo(
    capital: Capital("Luxembourg"),
    latLng: LatLng(49.6, 6.12),
  );
  @override
  List<RegionalBloc> get regionalBlocs => const [BlocEU()];
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(language: LangEng(), female: "Luxembourger", male: "Luxembourger"),
    Demonyms(
      language: LangFra(),
      female: "Luxembourgeoise",
      male: "Luxembourgeois",
    ),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(
      language: LangDeu(),
      official: "Großherzogtum Luxemburg",
      common: "Luxemburg",
    ),
    CountryName(
      language: LangFra(),
      official: "Grand-Duché de Luxembourg",
      common: "Luxembourg",
    ),
    CountryName(
      language: LangLtz(),
      official: "Groussherzogtum Lëtzebuerg",
      common: "Lëtzebuerg",
    ),
  ];
  @override
  List<NaturalLanguage> get languages => const [
    LangDeu(),
    LangFra(),
    LangLtz(),
  ];
}
