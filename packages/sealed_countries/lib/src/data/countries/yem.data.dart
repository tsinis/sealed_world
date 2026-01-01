// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/submodels/world_country.dart";

extension type const _YemFactory._(CountryYem _) implements CountryYem {
  const _YemFactory() : this._(const CountryYem._());
}

/// A class that represents the Yemen country.
class CountryYem extends WorldCountry {
  /// {@template sealed_world.country_yem_constructor}
  /// Creates a instance of [CountryYem] (Yemen country).
  ///
  /// ISO 3166-1 Alpha-3 code: `YEM`, ISO 3166-1 Alpha-2 code: `YE`.
  /// {@endtemplate}
  const factory CountryYem() = _YemFactory;

  const CountryYem._()
    : super._(
        name: const CountryName(
          language: LangEng(),
          official: "Republic of Yemen",
          common: "Yemen",
        ),
        tld: const [".ye"],
        code: "YEM",
        codeNumeric: "887",
        codeShort: "YE",
        cioc: "YEM",
        idd: const Idd(root: 9, suffixes: [67]),
        altSpellings: const [
          "YE",
          "Yemeni Republic",
          "al-Jumhūriyyah al-Yamaniyyah",
        ],
        continent: const Asia(),
        subregion: const WesternAsia(),
        latLng: const LatLng(15, 48),
        bordersCodes: const ["Omn", "Sau"],
        areaMetric: 527968,
        emoji: "🇾🇪",
        maps: const Maps(
          googleMaps: "WCmE76HKcLideQQw7",
          openStreetMaps: "relation/305092",
        ),
        population: 29825968,
        gini: const Gini(year: 2014, coefficient: 36.7),
        fifa: "YEM",
        car: const Car(sign: "YAR"),
        timezones: const ["UTC+03:00"],
        startOfWeek: Weekday.sunday,
      );
  @override
  List<FiatCurrency> get currencies => const [FiatYer()];
  @override
  CapitalInfo get capitalInfo => const CapitalInfo(
    capital: Capital("Sana'a"),
    latLng: LatLng(15.37, 44.19),
  );
  @override
  List<RegionalBloc> get regionalBlocs => const [BlocAL()];
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(language: LangEng(), female: "Yemeni", male: "Yemeni"),
    Demonyms(language: LangFra(), female: "Yéménite", male: "Yéménite"),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(
      language: LangAra(),
      official: "الجمهورية اليمنية",
      common: "اليَمَن",
    ),
  ];
  @override
  List<NaturalLanguage> get languages => const [LangAra()];
}
