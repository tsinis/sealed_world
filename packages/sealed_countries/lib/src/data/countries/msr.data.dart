// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/country.dart";

extension type const _MsrFactory._(CountryMsr _) implements CountryMsr {
  const _MsrFactory() : this._(const CountryMsr._());
}

/// A class that represents the the Montserrat country.
class CountryMsr extends WorldCountry {
  /// {@template sealed_world.country_msr_constructor}
  /// Creates a instance of [CountryMsr] (Montserrat country).
  ///
  /// ISO 3166-1 Alpha-3 code: `MSR`, ISO 3166-1 Alpha-2 code: `MS`.
  /// {@endtemplate}
  const factory CountryMsr() = _MsrFactory;

  const CountryMsr._()
    : super(
        name: const CountryName(
          language: LangEng(),
          official: "Montserrat",
          common: "Montserrat",
        ),
        tld: const [".ms"],
        code: "MSR",
        codeNumeric: "500",
        codeShort: "MS",
        independent: false,
        unMember: false,
        idd: const Idd(root: 1, suffixes: [664]),
        altSpellings: const ["MS"],
        continent: const Americas(),
        subregion: const Caribbean(),
        latLng: const LatLng(16.75, -62.2),
        areaMetric: 102,
        emoji: "🇲🇸",
        maps: const Maps(
          googleMaps: "CSbe7UmxPmiwQB7GA",
          openStreetMaps: "relation/537257",
        ),
        population: 4922,
        fifa: "MSR",
        car: const Car(sign: "GB", isRightSide: false),
        timezones: const ["UTC-04:00"],
      );
  @override
  List<FiatCurrency> get currencies => const [FiatXcd()];
  @override
  CapitalInfo get capitalInfo => const CapitalInfo(
    capital: Capital("Plymouth"),
    latLng: LatLng(16.7, -62.22),
  );
  @override
  List<RegionalBloc> get regionalBlocs => const [BlocCARICOM()];
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(
      language: LangEng(),
      female: "Montserratian",
      male: "Montserratian",
    ),
    Demonyms(
      language: LangFra(),
      female: "Montserratienne",
      male: "Montserratien",
    ),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(
      language: LangEng(),
      official: "Montserrat",
      common: "Montserrat",
    ),
  ];
  @override
  List<NaturalLanguage> get languages => const [LangEng()];
}
