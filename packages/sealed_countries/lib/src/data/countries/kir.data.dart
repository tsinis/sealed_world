// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/country.dart";

extension type const _KirFactory._(CountryKir _) implements CountryKir {
  const _KirFactory() : this._(const CountryKir._());
}

/// A class that represents the the Kiribati country.
class CountryKir extends WorldCountry {
  /// {@template sealed_world.country_kir_constructor}
  /// Creates a instance of [CountryKir] (Kiribati country).
  ///
  /// ISO 3166-1 Alpha-3 code: `KIR`, ISO 3166-1 Alpha-2 code: `KI`.
  /// {@endtemplate}
  const factory CountryKir() = _KirFactory;

  const CountryKir._()
    : super(
        name: const CountryName(
          language: LangEng(),
          official: "Independent and Sovereign Republic of Kiribati",
          common: "Kiribati",
        ),
        tld: const [".ki"],
        code: "KIR",
        codeNumeric: "296",
        codeShort: "KI",
        cioc: "KIR",
        idd: const Idd(root: 6, suffixes: [86]),
        altSpellings: const [
          "KI",
          "Republic of Kiribati",
          "Ribaberiki Kiribati",
        ],
        continent: const Oceania(),
        subregion: const Micronesia(),
        latLng: const LatLng(1.41666666, 173),
        areaMetric: 811,
        emoji: "🇰🇮",
        maps: const Maps(
          googleMaps: "NBfYvrndW4skAimw9",
          openStreetMaps: "relation/571178",
        ),
        population: 121388,
        gini: const Gini(year: 2006, coefficient: 37),
        car: const Car(sign: "KIR", isRightSide: false),
        timezones: const ["UTC+12:00", "UTC+13:00", "UTC+14:00"],
      );
  @override
  List<FiatCurrency> get currencies => const [FiatAud()];
  @override
  CapitalInfo get capitalInfo => const CapitalInfo(
    capital: Capital("South Tarawa"),
    latLng: LatLng(1.33, 172.98),
  );
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(language: LangEng(), female: "I-Kiribati", male: "I-Kiribati"),
    Demonyms(language: LangFra(), female: "Kiribatienne", male: "Kiribatien"),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(
      language: LangEng(),
      official: "Independent and Sovereign Republic of Kiribati",
      common: "Kiribati",
    ),
  ];
  @override
  List<NaturalLanguage> get languages => const [LangEng()];
}
