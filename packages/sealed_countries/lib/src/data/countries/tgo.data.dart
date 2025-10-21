// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/country.dart";

/// A class that represents the the Togo country.
class CountryTgo extends WorldCountry {
  /// {@template sealed_world.countries_tgo_constructor}}
  /// Creates a instance of [CountryTgo] (Togo country).
  ///
  /// ISO 3166-1 Alpha-3 code: `TGO`, ISO 3166-1 Alpha-2 code: `TG`.
  /// {@endtemplate}
  const factory CountryTgo() = _TgoFactory;

  const CountryTgo._()
    : super(
        name: const CountryName(
          language: LangEng(),
          official: "Togolese Republic",
          common: "Togo",
        ),
        tld: const [".tg"],
        code: "TGO",
        codeNumeric: "768",
        codeShort: "TG",
        cioc: "TOG",
        idd: const Idd(root: 2, suffixes: [28]),
        altSpellings: const [
          "TG",
          "Togolese",
          "Togolese Republic",
          "République Togolaise",
        ],
        continent: const Africa(),
        subregion: const WesternAfrica(),
        latLng: const LatLng(8, 1.16666666),
        bordersCodes: const ["Ben", "Bfa", "Gha"],
        areaMetric: 56785,
        emoji: "🇹🇬",
        maps: const Maps(
          googleMaps: "jzAa9feXuXPrKVb89",
          openStreetMaps: "relation/192782",
        ),
        population: 8278737,
        gini: const Gini(year: 2015, coefficient: 43.1),
        fifa: "TOG",
        car: const Car(sign: "TG"),
        timezones: const ["UTC+00:00"],
      );
  @override
  List<FiatCurrency> get currencies => const [FiatXof()];
  @override
  CapitalInfo get capitalInfo =>
      const CapitalInfo(capital: Capital("Lomé"), latLng: LatLng(6.14, 1.21));
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(language: LangEng(), female: "Togolese", male: "Togolese"),
    Demonyms(language: LangFra(), female: "Togolaise", male: "Togolais"),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(
      language: LangFra(),
      official: "République togolaise",
      common: "Togo",
    ),
  ];
  @override
  List<NaturalLanguage> get languages => const [LangFra()];
}

extension type const _TgoFactory._(CountryTgo _) implements CountryTgo {
  const _TgoFactory() : this._(const CountryTgo._());
}
