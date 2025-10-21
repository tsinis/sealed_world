// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/country.dart";

/// A class that represents the the American Samoa country.
class CountryAsm extends WorldCountry {
  /// {@template sealed_world.countries_asm_constructor}}
  /// Creates a instance of [CountryAsm] (American Samoa country).
  ///
  /// ISO 3166-1 Alpha-3 code: `ASM`, ISO 3166-1 Alpha-2 code: `AS`.
  /// {@endtemplate}
  const factory CountryAsm() = _AsmFactory;

  const CountryAsm._()
    : super(
        name: const CountryName(
          language: LangEng(),
          official: "American Samoa",
          common: "American Samoa",
        ),
        tld: const [".as"],
        code: "ASM",
        codeNumeric: "016",
        codeShort: "AS",
        cioc: "ASA",
        independent: false,
        unMember: false,
        idd: const Idd(root: 1, suffixes: [684]),
        altSpellings: const [
          "AS",
          "Amerika Sāmoa",
          "Amelika Sāmoa",
          "Sāmoa Amelika",
        ],
        continent: const Oceania(),
        subregion: const Polynesia(),
        latLng: const LatLng(-14.33333333, -170),
        areaMetric: 199,
        emoji: "🇦🇸",
        maps: const Maps(
          googleMaps: "Re9ePMjwP1sFCBFA6",
          openStreetMaps: "relation/2177187",
        ),
        population: 49710,
        fifa: "ASA",
        car: const Car(sign: "USA"),
        timezones: const ["UTC-11:00"],
        hasCoatOfArms: false,
      );
  @override
  List<FiatCurrency> get currencies => const [FiatUsd()];
  @override
  CapitalInfo get capitalInfo => const CapitalInfo(
    capital: Capital("Pago Pago"),
    latLng: LatLng(-14.27, -170.7),
  );
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(
      language: LangEng(),
      female: "American Samoan",
      male: "American Samoan",
    ),
    Demonyms(language: LangFra(), female: "Samoane", male: "Samoan"),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(
      language: LangEng(),
      official: "American Samoa",
      common: "American Samoa",
    ),
    CountryName(
      language: LangSmo(),
      official: "Sāmoa Amelika",
      common: "Sāmoa Amelika",
    ),
  ];
  @override
  List<NaturalLanguage> get languages => const [LangEng(), LangSmo()];
}

extension type const _AsmFactory._(CountryAsm _) implements CountryAsm {
  const _AsmFactory() : this._(const CountryAsm._());
}
