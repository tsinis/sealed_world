// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/country.dart";

extension type const _SycFactory._(CountrySyc _) implements CountrySyc {
  const _SycFactory() : this._(const CountrySyc._());
}

/// A class that represents the Seychelles country.
class CountrySyc extends WorldCountry {
  /// {@template sealed_world.country_syc_constructor}
  /// Creates a instance of [CountrySyc] (Seychelles country).
  ///
  /// ISO 3166-1 Alpha-3 code: `SYC`, ISO 3166-1 Alpha-2 code: `SC`.
  /// {@endtemplate}
  const factory CountrySyc() = _SycFactory;

  const CountrySyc._()
    : super(
        name: const CountryName(
          language: LangEng(),
          official: "Republic of Seychelles",
          common: "Seychelles",
        ),
        tld: const [".sc"],
        code: "SYC",
        codeNumeric: "690",
        codeShort: "SC",
        cioc: "SEY",
        idd: const Idd(root: 2, suffixes: [48]),
        altSpellings: const [
          "SC",
          "Republic of Seychelles",
          "Repiblik Sesel",
          "République des Seychelles",
        ],
        continent: const Africa(),
        subregion: const EasternAfrica(),
        latLng: const LatLng(-4.58333333, 55.66666666),
        areaMetric: 452,
        emoji: "🇸🇨",
        maps: const Maps(
          googleMaps: "aqCcy2TKh5TV5MAX8",
          openStreetMaps: "relation/536765",
        ),
        population: 98462,
        gini: const Gini(year: 2018, coefficient: 32.1),
        fifa: "SEY",
        car: const Car(sign: "SY", isRightSide: false),
        timezones: const ["UTC+04:00"],
      );
  @override
  List<FiatCurrency> get currencies => const [FiatScr()];
  @override
  CapitalInfo get capitalInfo => const CapitalInfo(
    capital: Capital("Victoria"),
    latLng: LatLng(-4.62, 55.45),
  );
  @override
  List<RegionalBloc> get regionalBlocs => const [BlocAU()];
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(language: LangEng(), female: "Seychellois", male: "Seychellois"),
    Demonyms(language: LangFra(), female: "Seychelloise", male: "Seychellois"),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(
      language: LangEng(),
      official: "Republic of Seychelles",
      common: "Seychelles",
    ),
    CountryName(
      language: LangFra(),
      official: "République des Seychelles",
      common: "Seychelles",
    ),
  ];
  @override
  List<NaturalLanguage> get languages => const [LangEng(), LangFra()];
}
