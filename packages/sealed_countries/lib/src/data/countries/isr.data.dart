// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/submodels/world_country.dart";

extension type const _IsrFactory._(CountryIsr _) implements CountryIsr {
  const _IsrFactory() : this._(const CountryIsr._());
}

/// A class that represents the Israel country.
class CountryIsr extends WorldCountry {
  /// {@template sealed_world.country_isr_constructor}
  /// Creates a instance of [CountryIsr] (Israel country).
  ///
  /// ISO 3166-1 Alpha-3 code: `ISR`, ISO 3166-1 Alpha-2 code: `IL`.
  /// {@endtemplate}
  const factory CountryIsr() = _IsrFactory;

  const CountryIsr._()
    : super._(
        name: const CountryName(
          language: LangEng(),
          official: "State of Israel",
          common: "Israel",
        ),
        tld: const [".il"],
        code: "ISR",
        codeNumeric: "376",
        codeShort: "IL",
        cioc: "ISR",
        idd: const Idd(root: 9, suffixes: [72]),
        altSpellings: const ["IL", "State of Israel", "Medīnat Yisrā'el"],
        continent: const Asia(),
        subregion: const WesternAsia(),
        latLng: const LatLng(31.47, 35.13),
        bordersCodes: const ["Egy", "Jor", "Lbn", "Pse", "Syr"],
        areaMetric: 20770,
        emoji: "🇮🇱",
        maps: const Maps(
          googleMaps: "6UY1AH8XeafVwdC97",
          openStreetMaps: "relation/1473946",
        ),
        population: 10094000,
        gini: const Gini(year: 2021, coefficient: 37.9),
        fifa: "ISR",
        car: const Car(sign: "IL"),
        timezones: const ["UTC+02:00"],
        startOfWeek: Weekday.sunday,
        postalCode: const PostalCode(),
      );
  @override
  List<FiatCurrency> get currencies => const [FiatIls()];
  @override
  CapitalInfo get capitalInfo => const CapitalInfo(
    capital: Capital("Jerusalem"),
    latLng: LatLng(31.77, 35.23),
  );
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(language: LangEng(), female: "Israeli", male: "Israeli"),
    Demonyms(language: LangFra(), female: "Israélienne", male: "Israélien"),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(
      language: LangAra(),
      official: "دولة إسرائيل",
      common: "إسرائيل",
    ),
    CountryName(language: LangHeb(), official: "מדינת ישראל", common: "ישראל"),
  ];
  @override
  List<NaturalLanguage> get languages => const [LangHeb()];
}
