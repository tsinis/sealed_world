// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/country.dart";

extension type const _SauFactory._(CountrySau _) implements CountrySau {
  const _SauFactory() : this._(const CountrySau._());
}

/// A class that represents the the Saudi Arabia country.
class CountrySau extends WorldCountry {
  /// {@template sealed_world.country_sau_constructor}
  /// Creates a instance of [CountrySau] (Saudi Arabia country).
  ///
  /// ISO 3166-1 Alpha-3 code: `SAU`, ISO 3166-1 Alpha-2 code: `SA`.
  /// {@endtemplate}
  const factory CountrySau() = _SauFactory;

  const CountrySau._()
    : super(
        name: const CountryName(
          language: LangEng(),
          official: "Kingdom of Saudi Arabia",
          common: "Saudi Arabia",
        ),
        tld: const [".sa", ".السعودية"],
        code: "SAU",
        codeNumeric: "682",
        codeShort: "SA",
        cioc: "KSA",
        idd: const Idd(root: 9, suffixes: [66]),
        altSpellings: const [
          "Saudi",
          "SA",
          "Kingdom of Saudi Arabia",
          "Al-Mamlakah al-‘Arabiyyah as-Su‘ūdiyyah",
        ],
        continent: const Asia(),
        subregion: const WesternAsia(),
        latLng: const LatLng(25, 45),
        bordersCodes: const ["Irq", "Jor", "Kwt", "Omn", "Qat", "Are", "Yem"],
        areaMetric: 2149690,
        emoji: "🇸🇦",
        maps: const Maps(
          googleMaps: "5PSjvdJ1AyaLFRrG9",
          openStreetMaps: "relation/307584",
        ),
        population: 34813867,
        fifa: "KSA",
        car: const Car(sign: "SA"),
        timezones: const ["UTC+03:00"],
        startOfWeek: Weekday.sunday,
        postalCode: const PostalCode(),
      );
  @override
  List<FiatCurrency> get currencies => const [FiatSar()];
  @override
  CapitalInfo get capitalInfo => const CapitalInfo(
    capital: Capital("Riyadh"),
    latLng: LatLng(24.65, 46.7),
  );
  @override
  List<RegionalBloc> get regionalBlocs => const [BlocAL()];
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(
      language: LangEng(),
      female: "Saudi Arabian",
      male: "Saudi Arabian",
    ),
    Demonyms(language: LangFra(), female: "Saoudienne", male: "Saoudien"),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(
      language: LangAra(),
      official: "المملكة العربية السعودية",
      common: "العربية السعودية",
    ),
  ];
  @override
  List<NaturalLanguage> get languages => const [LangAra()];
}
