// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/submodels/world_country.dart";

extension type const _JorFactory._(CountryJor _) implements CountryJor {
  const new() : this._(const CountryJor._());
}

/// A class that represents the Jordan country.
class CountryJor extends WorldCountry {
  /// {@template sealed_world.country_jor_constructor}
  /// Creates a instance of [CountryJor] (Jordan country).
  ///
  /// ISO 3166-1 Alpha-3 code: `JOR`, ISO 3166-1 Alpha-2 code: `JO`.
  /// {@endtemplate}
  const factory() = _JorFactory;

  const new _()
    : super._(
        name: const CountryName(
          language: LangEng(),
          official: "Hashemite Kingdom of Jordan",
          common: "Jordan",
        ),
        tld: const [".jo", "الاردن."],
        code: "JOR",
        codeNumeric: "400",
        codeShort: "JO",
        cioc: "JOR",
        idd: const Idd(root: 9, suffixes: [62]),
        altSpellings: const [
          "JO",
          "Hashemite Kingdom of Jordan",
          "al-Mamlakah al-Urdunīyah al-Hāshimīyah",
        ],
        continent: const Asia(),
        subregion: const WesternAsia(),
        latLng: const LatLng(31, 36),
        bordersCodes: const ["Irq", "Isr", "Pse", "Sau", "Syr"],
        areaMetric: 89342,
        emoji: "🇯🇴",
        maps: const Maps(
          googleMaps: "ko1dzSDKg8Gsi9A98",
          openStreetMaps: "relation/184818",
        ),
        population: 11484805,
        gini: const Gini(year: 2010, coefficient: 33.7),
        fifa: "JOR",
        car: const Car(sign: "HKJ"),
        timezones: const ["UTC+03:00"],
        startOfWeek: Weekday.sunday,
        postalCode: const PostalCode(),
      );
  @override
  List<FiatCurrency> get currencies => const [FiatJod()];
  @override
  CapitalInfo get capitalInfo => const CapitalInfo(
    capital: Capital("Amman"),
    latLng: LatLng(31.95, 35.93),
  );
  @override
  List<RegionalBloc> get regionalBlocs => const [BlocAL()];
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(language: LangEng(), female: "Jordanian", male: "Jordanian"),
    Demonyms(language: LangFra(), female: "Jordanienne", male: "Jordanien"),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(
      language: LangAra(),
      official: "المملكة الأردنية الهاشمية",
      common: "الأردن",
    ),
  ];
  @override
  List<NaturalLanguage> get languages => const [LangAra()];
}
