// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/country.dart";

extension type const _SsdFactory._(CountrySsd _) implements CountrySsd {
  const _SsdFactory() : this._(const CountrySsd._());
}

/// A class that represents the South Sudan country.
class CountrySsd extends WorldCountry {
  /// {@template sealed_world.country_ssd_constructor}
  /// Creates a instance of [CountrySsd] (South Sudan country).
  ///
  /// ISO 3166-1 Alpha-3 code: `SSD`, ISO 3166-1 Alpha-2 code: `SS`.
  /// {@endtemplate}
  const factory CountrySsd() = _SsdFactory;

  const CountrySsd._()
    : super(
        name: const CountryName(
          language: LangEng(),
          official: "Republic of South Sudan",
          common: "South Sudan",
        ),
        tld: const [".ss"],
        code: "SSD",
        codeNumeric: "728",
        codeShort: "SS",
        cioc: "SSD",
        idd: const Idd(root: 2, suffixes: [11]),
        altSpellings: const ["SS"],
        continent: const Africa(),
        subregion: const MiddleAfrica(),
        latLng: const LatLng(7, 30),
        landlocked: true,
        bordersCodes: const ["Caf", "Cod", "Eth", "Ken", "Sdn", "Uga"],
        areaMetric: 619745,
        emoji: "🇸🇸",
        maps: const Maps(
          googleMaps: "Zm1AYCXb9HSNF1P27",
          openStreetMaps: "relation/1656678",
        ),
        population: 11193729,
        gini: const Gini(year: 2016, coefficient: 44.1),
        fifa: "SSD",
        car: const Car(),
        timezones: const ["UTC+03:00"],
        startOfWeek: Weekday.sunday,
      );
  @override
  List<FiatCurrency> get currencies => const [FiatSsp()];
  @override
  CapitalInfo get capitalInfo =>
      const CapitalInfo(capital: Capital("Juba"), latLng: LatLng(4.85, 31.62));
  @override
  List<RegionalBloc> get regionalBlocs => const [BlocAU()];
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(
      language: LangEng(),
      female: "South Sudanese",
      male: "South Sudanese",
    ),
    Demonyms(
      language: LangFra(),
      female: "Sud-Soudanaise",
      male: "Sud-Soudanais",
    ),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(
      language: LangEng(),
      official: "Republic of South Sudan",
      common: "South Sudan",
    ),
  ];
  @override
  List<NaturalLanguage> get languages => const [LangEng()];
}
