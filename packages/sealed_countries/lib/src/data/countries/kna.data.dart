// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/country.dart";

/// A class that represents the the Saint Kitts and Nevis country.
class CountryKna extends WorldCountry {
  /// {@template sealed_world.countries_kna_constructor}}
  /// Creates a instance of [CountryKna] (Saint Kitts and Nevis country).
  ///
  /// ISO 3166-1 Alpha-3 code: `KNA`, ISO 3166-1 Alpha-2 code: `KN`.
  /// {@endtemplate}
  const factory CountryKna() = _KnaFactory;

  const CountryKna._()
    : super(
        name: const CountryName(
          language: LangEng(),
          official: "Federation of Saint Christopher and Nevis",
          common: "Saint Kitts and Nevis",
        ),
        tld: const [".kn"],
        code: "KNA",
        codeNumeric: "659",
        codeShort: "KN",
        cioc: "SKN",
        idd: const Idd(root: 1, suffixes: [869]),
        altSpellings: const ["KN", "Federation of Saint Christopher and Nevis"],
        continent: const Americas(),
        subregion: const Caribbean(),
        latLng: const LatLng(17.33333333, -62.75),
        areaMetric: 261,
        emoji: "🇰🇳",
        maps: const Maps(
          googleMaps: "qiaVwcLVTXX3eoTNA",
          openStreetMaps: "relation/536899",
        ),
        population: 47606,
        fifa: "SKN",
        car: const Car(sign: "KN", isRightSide: false),
        timezones: const ["UTC-04:00"],
      );
  @override
  List<FiatCurrency> get currencies => const [FiatXcd()];
  @override
  CapitalInfo get capitalInfo => const CapitalInfo(
    capital: Capital("Basseterre"),
    latLng: LatLng(17.3, -62.72),
  );
  @override
  List<RegionalBloc> get regionalBlocs => const [BlocCARICOM()];
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(
      language: LangEng(),
      female: "Kittitian or Nevisian",
      male: "Kittitian or Nevisian",
    ),
    Demonyms(
      language: LangFra(),
      female: "Kittitienne-et-nevicienne",
      male: "Kittitien-et-nevicien",
    ),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(
      language: LangEng(),
      official: "Federation of Saint Christopher and Nevis",
      common: "Saint Kitts and Nevis",
    ),
  ];
  @override
  List<NaturalLanguage> get languages => const [LangEng()];
}

extension type const _KnaFactory._(CountryKna _) implements CountryKna {
  const _KnaFactory() : this._(const CountryKna._());
}
