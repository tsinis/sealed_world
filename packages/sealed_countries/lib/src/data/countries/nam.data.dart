// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/country.dart";

/// A class that represents the the Namibia country.
class CountryNam extends WorldCountry {
  /// {@template sealed_world.countries_nam_constructor}}
  /// Creates a instance of [CountryNam] (Namibia country).
  ///
  /// ISO 3166-1 Alpha-3 code: `NAM`, ISO 3166-1 Alpha-2 code: `NA`.
  /// {@endtemplate}
  const factory CountryNam() = _NamFactory;

  const CountryNam._()
    : super(
        name: const CountryName(
          language: LangEng(),
          official: "Republic of Namibia",
          common: "Namibia",
        ),
        tld: const [".na"],
        code: "NAM",
        codeNumeric: "516",
        codeShort: "NA",
        cioc: "NAM",
        idd: const Idd(root: 2, suffixes: [64]),
        altSpellings: const ["NA", "Namibië", "Republic of Namibia"],
        continent: const Africa(),
        subregion: const SouthernAfrica(),
        latLng: const LatLng(-22, 17),
        bordersCodes: const ["Ago", "Bwa", "Zaf", "Tur"],
        areaMetric: 825615,
        emoji: "🇳🇦",
        maps: const Maps(
          googleMaps: "oR1i8BFEYX3EY83WA",
          openStreetMaps: "relation/195266",
        ),
        population: 2540916,
        gini: const Gini(year: 2015, coefficient: 59.1),
        fifa: "NAM",
        car: const Car(sign: "NAM", isRightSide: false),
        timezones: const ["UTC+01:00"],
      );
  @override
  List<FiatCurrency> get currencies => const [FiatNad(), FiatZar()];
  @override
  CapitalInfo get capitalInfo => const CapitalInfo(
    capital: Capital("Windhoek"),
    latLng: LatLng(-22.57, 17.08),
  );
  @override
  List<RegionalBloc> get regionalBlocs => const [BlocAU()];
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(language: LangEng(), female: "Namibian", male: "Namibian"),
    Demonyms(language: LangFra(), female: "Namibienne", male: "Namibien"),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(
      language: LangAfr(),
      official: "Republiek van Namibië",
      common: "Namibië",
    ),
    CountryName(
      language: LangDeu(),
      official: "Republik Namibia",
      common: "Namibia",
    ),
    CountryName(
      language: LangEng(),
      official: "Republic of Namibia",
      common: "Namibia",
    ),
    CountryName(
      language: LangHer(),
      official: "Republic of Namibia",
      common: "Namibia",
    ),
    CountryName(
      language: LangTsn(),
      official: "Lefatshe la Namibia",
      common: "Namibia",
    ),
  ];
  @override
  List<NaturalLanguage> get languages => const [
    LangAfr(),
    LangDeu(),
    LangEng(),
    LangHer(),
    LangNdo(),
    LangTsn(),
  ];
}

extension type const _NamFactory._(CountryNam _) implements CountryNam {
  const _NamFactory() : this._(const CountryNam._());
}
