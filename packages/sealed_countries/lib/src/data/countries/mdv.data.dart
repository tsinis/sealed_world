// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/submodels/world_country.dart";

extension type const _MdvFactory._(CountryMdv _) implements CountryMdv {
  const _MdvFactory() : this._(const CountryMdv._());
}

/// A class that represents the Maldives country.
class CountryMdv extends WorldCountry {
  /// {@template sealed_world.country_mdv_constructor}
  /// Creates a instance of [CountryMdv] (Maldives country).
  ///
  /// ISO 3166-1 Alpha-3 code: `MDV`, ISO 3166-1 Alpha-2 code: `MV`.
  /// {@endtemplate}
  const factory CountryMdv() = _MdvFactory;

  const CountryMdv._()
    : super._(
        name: const CountryName(
          language: LangEng(),
          official: "Republic of the Maldives",
          common: "Maldives",
        ),
        tld: const [".mv"],
        code: "MDV",
        codeNumeric: "462",
        codeShort: "MV",
        cioc: "MDV",
        idd: const Idd(root: 9, suffixes: [60]),
        altSpellings: const [
          "MV",
          "Maldive Islands",
          "Republic of the Maldives",
          "Dhivehi Raajjeyge Jumhooriyya",
        ],
        continent: const Asia(),
        subregion: const SouthernAsia(),
        latLng: const LatLng(3.25, 73),
        areaMetric: 300,
        emoji: "🇲🇻",
        maps: const Maps(
          googleMaps: "MNAWGq9vEdbZ9vUV7",
          openStreetMaps: "relation/536773",
        ),
        population: 540542,
        gini: const Gini(year: 2016, coefficient: 31.3),
        fifa: "MDV",
        car: const Car(sign: "MV", isRightSide: false),
        timezones: const ["UTC+05:00"],
        startOfWeek: Weekday.sunday,
        postalCode: const PostalCode(),
      );
  @override
  List<FiatCurrency> get currencies => const [FiatMvr()];
  @override
  CapitalInfo get capitalInfo =>
      const CapitalInfo(capital: Capital("Malé"), latLng: LatLng(4.17, 73.51));
  @override
  List<RegionalBloc> get regionalBlocs => const [BlocSAARC()];
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(language: LangEng(), female: "Maldivian", male: "Maldivian"),
    Demonyms(language: LangFra(), female: "Maldivienne", male: "Maldivien"),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(
      language: LangDiv(),
      official: "ދިވެހިރާއްޖޭގެ ޖުމްހޫރިއްޔާ",
      common: "ދިވެހިރާއްޖެ",
    ),
  ];
  @override
  List<NaturalLanguage> get languages => const [LangDiv()];
}
