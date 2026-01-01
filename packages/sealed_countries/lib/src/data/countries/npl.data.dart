// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/submodels/world_country.dart";

extension type const _NplFactory._(CountryNpl _) implements CountryNpl {
  const _NplFactory() : this._(const CountryNpl._());
}

/// A class that represents the Nepal country.
class CountryNpl extends WorldCountry {
  /// {@template sealed_world.country_npl_constructor}
  /// Creates a instance of [CountryNpl] (Nepal country).
  ///
  /// ISO 3166-1 Alpha-3 code: `NPL`, ISO 3166-1 Alpha-2 code: `NP`.
  /// {@endtemplate}
  const factory CountryNpl() = _NplFactory;

  const CountryNpl._()
    : super._(
        name: const CountryName(
          language: LangEng(),
          official: "Federal Democratic Republic of Nepal",
          common: "Nepal",
        ),
        tld: const [".np"],
        code: "NPL",
        codeNumeric: "524",
        codeShort: "NP",
        cioc: "NEP",
        idd: const Idd(root: 9, suffixes: [77]),
        altSpellings: const [
          "NP",
          "Federal Democratic Republic of Nepal",
          "Loktāntrik Ganatantra Nepāl",
        ],
        continent: const Asia(),
        subregion: const SouthernAsia(),
        latLng: const LatLng(28, 84),
        landlocked: true,
        bordersCodes: const ["Chn", "Ind"],
        areaMetric: 147181,
        emoji: "🇳🇵",
        maps: const Maps(
          googleMaps: "UMj2zpbQp7B5c3yT7",
          openStreetMaps: "relation/184633",
        ),
        population: 29136808,
        gini: const Gini(year: 2010, coefficient: 32.8),
        fifa: "NEP",
        car: const Car(sign: "NEP", isRightSide: false),
        timezones: const ["UTC+05:45"],
        startOfWeek: Weekday.sunday,
        postalCode: const PostalCode(),
      );
  @override
  List<FiatCurrency> get currencies => const [FiatNpr()];
  @override
  CapitalInfo get capitalInfo => const CapitalInfo(
    capital: Capital("Kathmandu"),
    latLng: LatLng(27.72, 85.32),
  );
  @override
  List<RegionalBloc> get regionalBlocs => const [BlocSAARC()];
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(language: LangEng(), female: "Nepalese", male: "Nepalese"),
    Demonyms(language: LangFra(), female: "Népalaise", male: "Népalais"),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(
      language: LangNep(),
      official: "नेपाल संघीय लोकतान्त्रिक गणतन्त्र",
      common: "नेपाल",
    ),
  ];
  @override
  List<NaturalLanguage> get languages => const [LangNep()];
}
