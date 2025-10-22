// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/country.dart";

extension type const _JamFactory._(CountryJam _) implements CountryJam {
  const _JamFactory() : this._(const CountryJam._());
}

/// A class that represents the the Jamaica country.
class CountryJam extends WorldCountry {
  /// {@template sealed_world.country_jam_constructor}
  /// Creates a instance of [CountryJam] (Jamaica country).
  ///
  /// ISO 3166-1 Alpha-3 code: `JAM`, ISO 3166-1 Alpha-2 code: `JM`.
  /// {@endtemplate}
  const factory CountryJam() = _JamFactory;

  const CountryJam._()
    : super(
        name: const CountryName(
          language: LangEng(),
          official: "Jamaica",
          common: "Jamaica",
        ),
        tld: const [".jm"],
        code: "JAM",
        codeNumeric: "388",
        codeShort: "JM",
        cioc: "JAM",
        idd: const Idd(root: 1, suffixes: [658, 876]),
        altSpellings: const ["JM"],
        continent: const Americas(),
        subregion: const Caribbean(),
        latLng: const LatLng(18.25, -77.5),
        areaMetric: 10991,
        emoji: "🇯🇲",
        maps: const Maps(
          googleMaps: "Z8mQ6jxnRQKFwJy9A",
          openStreetMaps: "relation/555017",
        ),
        population: 2961161,
        gini: const Gini(year: 2004, coefficient: 45.5),
        fifa: "JAM",
        car: const Car(sign: "JA", isRightSide: false),
        timezones: const ["UTC-05:00"],
      );
  @override
  List<FiatCurrency> get currencies => const [FiatJmd()];
  @override
  CapitalInfo get capitalInfo => const CapitalInfo(
    capital: Capital("Kingston"),
    latLng: LatLng(17.99702, -76.79358),
  );
  @override
  List<RegionalBloc> get regionalBlocs => const [BlocCARICOM()];
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(language: LangEng(), female: "Jamaican", male: "Jamaican"),
    Demonyms(language: LangFra(), female: "Jamaïcaine", male: "Jamaïcain"),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(language: LangEng(), official: "Jamaica", common: "Jamaica"),
  ];
  @override
  List<NaturalLanguage> get languages => const [LangEng()];
}
