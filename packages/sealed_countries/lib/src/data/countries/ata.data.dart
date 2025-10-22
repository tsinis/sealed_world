// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/country.dart";

extension type const _AtaFactory._(CountryAta _) implements CountryAta {
  const _AtaFactory() : this._(const CountryAta._());
}

/// A class that represents the Antarctica country.
class CountryAta extends WorldCountry {
  /// {@template sealed_world.country_ata_constructor}
  /// Creates a instance of [CountryAta] (Antarctica country).
  ///
  /// ISO 3166-1 Alpha-3 code: `ATA`, ISO 3166-1 Alpha-2 code: `AQ`.
  /// {@endtemplate}
  const factory CountryAta() = _AtaFactory;

  const CountryAta._()
    : super(
        name: const CountryName(
          language: LangEng(),
          official: "Antarctica",
          common: "Antarctica",
        ),
        tld: const [".aq"],
        code: "ATA",
        codeNumeric: "010",
        codeShort: "AQ",
        independent: false,
        unMember: false,
        idd: const Idd(root: 6, suffixes: [72]),
        altSpellings: const ["AQ"],
        continent: const Antarctica(),
        latLng: const LatLng(-90, 0),
        areaMetric: 14000000,
        emoji: "🇦🇶",
        maps: const Maps(
          googleMaps: "kyBuJriu4itiXank7",
          openStreetMaps: "node/36966060",
        ),
        population: 1000,
        car: const Car(),
        timezones: const [
          "UTC-03:00",
          "UTC+03:00",
          "UTC+05:00",
          "UTC+06:00",
          "UTC+07:00",
          "UTC+08:00",
          "UTC+10:00",
          "UTC+12:00",
        ],
      );
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(language: LangEng(), female: "Antarctican", male: "Antarctican"),
    Demonyms(
      language: LangFra(),
      female: "Antarcticaine",
      male: "Antarcticain",
    ),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(
      language: LangEng(),
      official: "Antarctica",
      common: "Antarctica",
    ),
  ];
  @override
  List<NaturalLanguage> get languages => const [LangEng()];
}
