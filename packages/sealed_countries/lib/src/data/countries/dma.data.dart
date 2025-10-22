// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/country.dart";

extension type const _DmaFactory._(CountryDma _) implements CountryDma {
  const _DmaFactory() : this._(const CountryDma._());
}

/// A class that represents the Dominica country.
class CountryDma extends WorldCountry {
  /// {@template sealed_world.country_dma_constructor}
  /// Creates a instance of [CountryDma] (Dominica country).
  ///
  /// ISO 3166-1 Alpha-3 code: `DMA`, ISO 3166-1 Alpha-2 code: `DM`.
  /// {@endtemplate}
  const factory CountryDma() = _DmaFactory;

  const CountryDma._()
    : super(
        name: const CountryName(
          language: LangEng(),
          official: "Commonwealth of Dominica",
          common: "Dominica",
        ),
        tld: const [".dm"],
        code: "DMA",
        codeNumeric: "212",
        codeShort: "DM",
        cioc: "DMA",
        idd: const Idd(root: 1, suffixes: [767]),
        altSpellings: const [
          "DM",
          "Dominique",
          "Wai‘tu kubuli",
          "Commonwealth of Dominica",
        ],
        continent: const Americas(),
        subregion: const Caribbean(),
        latLng: const LatLng(15.41666666, -61.33333333),
        areaMetric: 751,
        emoji: "🇩🇲",
        maps: const Maps(
          googleMaps: "HSKdHYpFC8oHHuyV7",
          openStreetMaps: "relation/307823",
        ),
        population: 71991,
        fifa: "DMA",
        car: const Car(sign: "WD", isRightSide: false),
        timezones: const ["UTC-04:00"],
      );
  @override
  List<FiatCurrency> get currencies => const [FiatXcd()];
  @override
  CapitalInfo get capitalInfo => const CapitalInfo(
    capital: Capital("Roseau"),
    latLng: LatLng(15.3, -61.4),
  );
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(language: LangEng(), female: "Dominican", male: "Dominican"),
    Demonyms(language: LangFra(), female: "Dominiquaise", male: "Dominiquais"),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(
      language: LangEng(),
      official: "Commonwealth of Dominica",
      common: "Dominica",
    ),
  ];
  @override
  List<NaturalLanguage> get languages => const [LangEng()];
}
