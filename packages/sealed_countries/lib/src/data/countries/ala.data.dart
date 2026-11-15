// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/submodels/world_country.dart";

extension type const _AlaFactory._(CountryAla _) implements CountryAla {
  const new() : this._(const CountryAla._());
}

/// A class that represents the Åland Islands country.
class CountryAla extends WorldCountry {
  /// {@template sealed_world.country_ala_constructor}
  /// Creates a instance of [CountryAla] (Åland Islands country).
  ///
  /// ISO 3166-1 Alpha-3 code: `ALA`, ISO 3166-1 Alpha-2 code: `AX`.
  /// {@endtemplate}
  const factory() = _AlaFactory;

  const new _()
    : super._(
        name: const CountryName(
          language: LangEng(),
          official: "Åland Islands",
          common: "Åland Islands",
        ),
        tld: const [".ax"],
        code: "ALA",
        codeNumeric: "248",
        codeShort: "AX",
        independent: false,
        unMember: false,
        idd: const Idd(root: 3, suffixes: [5818]),
        altSpellings: const ["AX", "Aaland", "Aland", "Ahvenanmaa"],
        continent: const Europe(),
        subregion: const NorthernEurope(),
        latLng: const LatLng(60.116667, 19.9),
        areaMetric: 1580,
        emoji: "🇦🇽",
        maps: const Maps(
          googleMaps: "ewFb3vYsfUmVCoSb8",
          openStreetMaps: "relation/1650407",
        ),
        population: 30541,
        car: const Car(sign: "FIN"),
        timezones: const ["UTC+02:00"],
      );
  @override
  List<FiatCurrency> get currencies => const [FiatEur()];
  @override
  CapitalInfo get capitalInfo => const CapitalInfo(
    capital: Capital("Mariehamn"),
    latLng: LatLng(60.12, 19.9),
  );
  @override
  List<RegionalBloc> get regionalBlocs => const [BlocEU()];
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(language: LangEng(), female: "Ålandish", male: "Ålandish"),
    Demonyms(language: LangFra(), female: "Ålandaise", male: "Ålandais"),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(
      language: LangSwe(),
      official: "Landskapet Åland",
      common: "Åland",
    ),
  ];
  @override
  List<NaturalLanguage> get languages => const [LangSwe()];
}
