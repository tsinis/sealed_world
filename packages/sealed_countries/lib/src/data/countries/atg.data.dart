// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/country.dart";

extension type const _AtgFactory._(CountryAtg _) implements CountryAtg {
  const _AtgFactory() : this._(const CountryAtg._());
}

/// A class that represents the the Antigua and Barbuda country.
class CountryAtg extends WorldCountry {
  /// {@template sealed_world.country_atg_constructor}
  /// Creates a instance of [CountryAtg] (Antigua and Barbuda country).
  ///
  /// ISO 3166-1 Alpha-3 code: `ATG`, ISO 3166-1 Alpha-2 code: `AG`.
  /// {@endtemplate}
  const factory CountryAtg() = _AtgFactory;

  const CountryAtg._()
    : super(
        name: const CountryName(
          language: LangEng(),
          official: "Antigua and Barbuda",
          common: "Antigua and Barbuda",
        ),
        tld: const [".ag"],
        code: "ATG",
        codeNumeric: "028",
        codeShort: "AG",
        cioc: "ANT",
        idd: const Idd(root: 1, suffixes: [268]),
        altSpellings: const ["AG"],
        continent: const Americas(),
        subregion: const Caribbean(),
        latLng: const LatLng(17.05, -61.8),
        areaMetric: 442,
        emoji: "🇦🇬",
        maps: const Maps(
          googleMaps: "fnye4wGJ1RzC9jpX9",
          openStreetMaps: "relation/536900",
        ),
        population: 100772,
        fifa: "ATG",
        car: const Car(sign: "AG", isRightSide: false),
        timezones: const ["UTC-04:00"],
      );
  @override
  List<FiatCurrency> get currencies => const [FiatXcd()];
  @override
  CapitalInfo get capitalInfo => const CapitalInfo(
    capital: Capital("Saint John's"),
    latLng: LatLng(17.12, -61.85),
  );
  @override
  List<RegionalBloc> get regionalBlocs => const [BlocCARICOM()];
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(
      language: LangEng(),
      female: "Antiguan, Barbudan",
      male: "Antiguan, Barbudan",
    ),
    Demonyms(
      language: LangFra(),
      female: "Antiguaise et barbudienne",
      male: "Antiguaise et barbudien",
    ),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(
      language: LangEng(),
      official: "Antigua and Barbuda",
      common: "Antigua and Barbuda",
    ),
  ];
  @override
  List<NaturalLanguage> get languages => const [LangEng()];
}
