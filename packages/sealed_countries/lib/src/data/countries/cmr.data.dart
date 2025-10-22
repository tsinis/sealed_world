// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/country.dart";

extension type const _CmrFactory._(CountryCmr _) implements CountryCmr {
  const _CmrFactory() : this._(const CountryCmr._());
}

/// A class that represents the the Cameroon country.
class CountryCmr extends WorldCountry {
  /// {@template sealed_world.country_cmr_constructor}
  /// Creates a instance of [CountryCmr] (Cameroon country).
  ///
  /// ISO 3166-1 Alpha-3 code: `CMR`, ISO 3166-1 Alpha-2 code: `CM`.
  /// {@endtemplate}
  const factory CountryCmr() = _CmrFactory;

  const CountryCmr._()
    : super(
        name: const CountryName(
          language: LangEng(),
          official: "Republic of Cameroon",
          common: "Cameroon",
        ),
        tld: const [".cm"],
        code: "CMR",
        codeNumeric: "120",
        codeShort: "CM",
        cioc: "CMR",
        idd: const Idd(root: 2, suffixes: [37]),
        altSpellings: const [
          "CM",
          "Republic of Cameroon",
          "République du Cameroun",
        ],
        continent: const Africa(),
        subregion: const MiddleAfrica(),
        latLng: const LatLng(6, 12),
        bordersCodes: const ["Caf", "Tcd", "Cog", "Gnq", "Gab", "Nga"],
        areaMetric: 475442,
        emoji: "🇨🇲",
        maps: const Maps(
          googleMaps: "JqiipHgFboG3rBJh9",
          openStreetMaps: "relation/192830",
        ),
        population: 30966105,
        gini: const Gini(year: 2014, coefficient: 46.6),
        fifa: "CMR",
        car: const Car(sign: "CAM"),
        timezones: const ["UTC+01:00"],
      );
  @override
  List<FiatCurrency> get currencies => const [FiatXaf()];
  @override
  CapitalInfo get capitalInfo => const CapitalInfo(
    capital: Capital("Yaoundé"),
    latLng: LatLng(3.85, 11.5),
  );
  @override
  List<RegionalBloc> get regionalBlocs => const [BlocAU()];
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(language: LangEng(), female: "Cameroonian", male: "Cameroonian"),
    Demonyms(language: LangFra(), female: "Camerounaise", male: "Camerounais"),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(
      language: LangEng(),
      official: "Republic of Cameroon",
      common: "Cameroon",
    ),
    CountryName(
      language: LangFra(),
      official: "République du Cameroun",
      common: "Cameroun",
    ),
  ];
  @override
  List<NaturalLanguage> get languages => const [LangEng(), LangFra()];
}
