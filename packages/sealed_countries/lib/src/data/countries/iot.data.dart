// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/country.dart";

extension type const _IotFactory._(CountryIot _) implements CountryIot {
  const _IotFactory() : this._(const CountryIot._());
}

/// A class that represents the the British Indian Ocean Territory country.
class CountryIot extends WorldCountry {
  /// {@template sealed_world.country_iot_constructor}
  /// Creates a instance of [CountryIot] (British Indian Ocean Territory country).
  ///
  /// ISO 3166-1 Alpha-3 code: `IOT`, ISO 3166-1 Alpha-2 code: `IO`.
  /// {@endtemplate}
  const factory CountryIot() = _IotFactory;

  const CountryIot._()
    : super(
        name: const CountryName(
          language: LangEng(),
          official: "British Indian Ocean Territory",
          common: "British Indian Ocean Territory",
        ),
        tld: const [".io"],
        code: "IOT",
        codeNumeric: "086",
        codeShort: "IO",
        independent: false,
        unMember: false,
        idd: const Idd(root: 2, suffixes: [46]),
        altSpellings: const ["IO"],
        continent: const Africa(),
        subregion: const EasternAfrica(),
        latLng: const LatLng(-6, 71.5),
        areaMetric: 60,
        emoji: "🇮🇴",
        maps: const Maps(
          googleMaps: "bheNucgekVEYozoi6",
          openStreetMaps: "relation/1993867",
        ),
        population: 3000,
        car: const Car(sign: "GB"),
        timezones: const ["UTC+06:00"],
        hasCoatOfArms: false,
      );
  @override
  List<FiatCurrency> get currencies => const [FiatUsd()];
  @override
  CapitalInfo get capitalInfo => const CapitalInfo(
    capital: Capital("Diego Garcia"),
    latLng: LatLng(-7.3, 72.4),
  );
  @override
  List<RegionalBloc> get regionalBlocs => const [BlocAU()];
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(language: LangEng(), female: "British", male: "British"),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(
      language: LangEng(),
      official: "British Indian Ocean Territory",
      common: "British Indian Ocean Territory",
    ),
  ];
  @override
  List<NaturalLanguage> get languages => const [LangEng()];
}
