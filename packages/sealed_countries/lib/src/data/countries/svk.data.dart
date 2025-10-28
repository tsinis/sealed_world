// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/country.dart";

extension type const _SvkFactory._(CountrySvk _) implements CountrySvk {
  const _SvkFactory() : this._(const CountrySvk._());
}

/// A class that represents the Slovakia country.
class CountrySvk extends WorldCountry {
  /// {@template sealed_world.country_svk_constructor}
  /// Creates a instance of [CountrySvk] (Slovakia country).
  ///
  /// ISO 3166-1 Alpha-3 code: `SVK`, ISO 3166-1 Alpha-2 code: `SK`.
  /// {@endtemplate}
  const factory CountrySvk() = _SvkFactory;

  const CountrySvk._()
    : super(
        name: const CountryName(
          language: LangEng(),
          official: "Slovak Republic",
          common: "Slovakia",
        ),
        tld: const [".sk"],
        code: "SVK",
        codeNumeric: "703",
        codeShort: "SK",
        cioc: "SVK",
        idd: const Idd(root: 4, suffixes: [21]),
        altSpellings: const ["SK", "Slovak Republic", "Slovenská republika"],
        continent: const Europe(),
        subregion: const CentralEurope(),
        latLng: const LatLng(48.66666666, 19.5),
        landlocked: true,
        bordersCodes: const ["Aut", "Cze", "Hun", "Pol", "Ukr"],
        areaMetric: 49037,
        emoji: "🇸🇰",
        maps: const Maps(
          googleMaps: "uNSH2wW4bLoZVYJj7",
          openStreetMaps: "relation/14296",
        ),
        population: 5458827,
        gini: const Gini(year: 2018, coefficient: 25),
        fifa: "SVK",
        car: const Car(sign: "SK"),
        timezones: const ["UTC+01:00"],
        postalCode: const PostalCode(format: "###  ##"),
      );
  @override
  List<FiatCurrency> get currencies => const [FiatEur()];
  @override
  CapitalInfo get capitalInfo => const CapitalInfo(
    capital: Capital("Bratislava"),
    latLng: LatLng(48.15, 17.12),
  );
  @override
  List<RegionalBloc> get regionalBlocs => const [BlocEU()];
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(language: LangEng(), female: "Slovak", male: "Slovak"),
    Demonyms(language: LangFra(), female: "Slovaque", male: "Slovaque"),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(
      language: LangSlk(),
      official: "Slovenská republika",
      common: "Slovensko",
    ),
  ];
  @override
  List<NaturalLanguage> get languages => const [LangSlk()];
}
