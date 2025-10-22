// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/country.dart";

extension type const _PcnFactory._(CountryPcn _) implements CountryPcn {
  const _PcnFactory() : this._(const CountryPcn._());
}

/// A class that represents the the Pitcairn Islands country.
class CountryPcn extends WorldCountry {
  /// {@template sealed_world.country_pcn_constructor}
  /// Creates a instance of [CountryPcn] (Pitcairn Islands country).
  ///
  /// ISO 3166-1 Alpha-3 code: `PCN`, ISO 3166-1 Alpha-2 code: `PN`.
  /// {@endtemplate}
  const factory CountryPcn() = _PcnFactory;

  const CountryPcn._()
    : super(
        name: const CountryName(
          language: LangEng(),
          official: "Pitcairn Group of Islands",
          common: "Pitcairn Islands",
        ),
        tld: const [".pn"],
        code: "PCN",
        codeNumeric: "612",
        codeShort: "PN",
        independent: false,
        unMember: false,
        idd: const Idd(root: 6, suffixes: [4]),
        altSpellings: const [
          "PN",
          "Pitcairn",
          "Pitcairn Henderson Ducie and Oeno Islands",
        ],
        continent: const Oceania(),
        subregion: const Polynesia(),
        latLng: const LatLng(-25.06666666, -130.1),
        areaMetric: 47,
        emoji: "🇵🇳",
        maps: const Maps(
          googleMaps: "XGJMnMAigXjXcxSa7",
          openStreetMaps: "relation/2185375",
        ),
        population: 56,
        car: const Car(sign: "GB", isRightSide: false),
        timezones: const ["UTC-08:00"],
        hasCoatOfArms: false,
      );
  @override
  List<FiatCurrency> get currencies => const [FiatNzd()];
  @override
  CapitalInfo get capitalInfo => const CapitalInfo(
    capital: Capital("Adamstown"),
    latLng: LatLng(-25.07, -130.08),
  );
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(
      language: LangEng(),
      female: "Pitcairn Islander",
      male: "Pitcairn Islander",
    ),
    Demonyms(language: LangFra(), female: "Pitcairnaise", male: "Pitcairnais"),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(
      language: LangEng(),
      official: "Pitcairn Group of Islands",
      common: "Pitcairn Islands",
    ),
  ];
  @override
  List<NaturalLanguage> get languages => const [LangEng()];
}
