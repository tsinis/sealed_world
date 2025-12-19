// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/country.dart";

extension type const _ZweFactory._(CountryZwe _) implements CountryZwe {
  const _ZweFactory() : this._(const CountryZwe._());
}

/// A class that represents the Zimbabwe country.
class CountryZwe extends WorldCountry {
  /// {@template sealed_world.country_zwe_constructor}
  /// Creates a instance of [CountryZwe] (Zimbabwe country).
  ///
  /// ISO 3166-1 Alpha-3 code: `ZWE`, ISO 3166-1 Alpha-2 code: `ZW`.
  /// {@endtemplate}
  const factory CountryZwe() = _ZweFactory;

  const CountryZwe._()
    : super(
        name: const CountryName(
          language: LangEng(),
          official: "Republic of Zimbabwe",
          common: "Zimbabwe",
        ),
        tld: const [".zw"],
        code: "ZWE",
        codeNumeric: "716",
        codeShort: "ZW",
        cioc: "ZIM",
        idd: const Idd(root: 2, suffixes: [63]),
        altSpellings: const ["ZW", "Republic of Zimbabwe"],
        continent: const Africa(),
        subregion: const SouthernAfrica(),
        latLng: const LatLng(-20, 30),
        landlocked: true,
        bordersCodes: const ["Bwa", "Moz", "Zaf", "Zmb"],
        areaMetric: 390757,
        emoji: "🇿🇼",
        maps: const Maps(
          googleMaps: "M26BqdwQctqxXS65A",
          openStreetMaps: "relation/195272",
        ),
        population: 15178957,
        gini: const Gini(year: 2019, coefficient: 50.3),
        fifa: "ZIM",
        car: const Car(sign: "ZW", isRightSide: false),
        timezones: const ["UTC+02:00"],
      );
  @override
  List<FiatCurrency> get currencies => const [FiatGbp(), FiatZwg()];
  @override
  CapitalInfo get capitalInfo => const CapitalInfo(
    capital: Capital("Harare"),
    latLng: LatLng(-17.82, 31.03),
  );
  @override
  List<RegionalBloc> get regionalBlocs => const [BlocAU()];
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(language: LangEng(), female: "Zimbabwean", male: "Zimbabwean"),
    Demonyms(language: LangFra(), female: "Zimbabwéenne", male: "Zimbabwéen"),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(
      language: LangEng(),
      official: "Republic of Zimbabwe",
      common: "Zimbabwe",
    ),
    CountryName(
      language: LangSna(),
      official: "Nyika yeZimbabwe",
      common: "yeZimbabwe",
    ),
    CountryName(
      language: LangNde(),
      official: "Ilizwe laseZimbabwe",
      common: "laseZimbabwe",
    ),
    CountryName(
      language: LangNya(),
      official: "Dziko la Zimbabwe",
      common: "Zimbabwe",
    ),
    CountryName(
      language: LangTsn(),
      official: "Lefatshe la Zimbabwe",
      common: "Zimbabwe",
    ),
    CountryName(
      language: LangTso(),
      official: "Riphabliki ra Zimbabwe",
      common: "Zimbabwe",
    ),
    CountryName(
      language: LangVen(),
      official: "Riphabuḽiki ya Zimbabwe",
      common: "Zimbabwe",
    ),
    CountryName(
      language: LangXho(),
      official: "IRiphabhlikhi yaseZimbabwe",
      common: "yaseZimbabwe",
    ),
  ];
  @override
  List<NaturalLanguage> get languages => const [
    LangEng(),
    LangNde(),
    LangNya(),
    LangSna(),
    LangSot(),
    LangTsn(),
    LangTso(),
    LangVen(),
    LangXho(),
  ];
}
