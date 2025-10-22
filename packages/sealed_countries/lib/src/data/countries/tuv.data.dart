// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/country.dart";

extension type const _TuvFactory._(CountryTuv _) implements CountryTuv {
  const _TuvFactory() : this._(const CountryTuv._());
}

/// A class that represents the the Tuvalu country.
class CountryTuv extends WorldCountry {
  /// {@template sealed_world.country_tuv_constructor}
  /// Creates a instance of [CountryTuv] (Tuvalu country).
  ///
  /// ISO 3166-1 Alpha-3 code: `TUV`, ISO 3166-1 Alpha-2 code: `TV`.
  /// {@endtemplate}
  const factory CountryTuv() = _TuvFactory;

  const CountryTuv._()
    : super(
        name: const CountryName(
          language: LangEng(),
          official: "Tuvalu",
          common: "Tuvalu",
        ),
        tld: const [".tv"],
        code: "TUV",
        codeNumeric: "798",
        codeShort: "TV",
        cioc: "TUV",
        idd: const Idd(root: 6, suffixes: [88]),
        altSpellings: const ["TV"],
        continent: const Oceania(),
        subregion: const Polynesia(),
        latLng: const LatLng(-8, 178),
        areaMetric: 26,
        emoji: "🇹🇻",
        maps: const Maps(
          googleMaps: "LbuUxtkgm1dfN1Pn6",
          openStreetMaps: "relation/2177266",
        ),
        population: 10643,
        gini: const Gini(year: 2022, coefficient: 39),
        car: const Car(sign: "TUV", isRightSide: false),
        timezones: const ["UTC+12:00"],
      );
  @override
  List<FiatCurrency> get currencies => const [FiatAud()];
  @override
  CapitalInfo get capitalInfo => const CapitalInfo(
    capital: Capital("Funafuti"),
    latLng: LatLng(-8.52, 179.22),
  );
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(language: LangEng(), female: "Tuvaluan", male: "Tuvaluan"),
    Demonyms(language: LangFra(), female: "Tuvaluane", male: "Tuvaluan"),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(language: LangEng(), official: "Tuvalu", common: "Tuvalu"),
  ];
  @override
  List<NaturalLanguage> get languages => const [LangEng()];
}
