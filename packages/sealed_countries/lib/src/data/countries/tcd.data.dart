// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/country.dart";

extension type const _TcdFactory._(CountryTcd _) implements CountryTcd {
  const _TcdFactory() : this._(const CountryTcd._());
}

/// A class that represents the the Chad country.
class CountryTcd extends WorldCountry {
  /// {@template sealed_world.country_tcd_constructor}
  /// Creates a instance of [CountryTcd] (Chad country).
  ///
  /// ISO 3166-1 Alpha-3 code: `TCD`, ISO 3166-1 Alpha-2 code: `TD`.
  /// {@endtemplate}
  const factory CountryTcd() = _TcdFactory;

  const CountryTcd._()
    : super(
        name: const CountryName(
          language: LangEng(),
          official: "Republic of Chad",
          common: "Chad",
        ),
        tld: const [".td"],
        code: "TCD",
        codeNumeric: "148",
        codeShort: "TD",
        cioc: "CHA",
        idd: const Idd(root: 2, suffixes: [35]),
        altSpellings: const [
          "TD",
          "Tchad",
          "Republic of Chad",
          "République du Tchad",
        ],
        continent: const Africa(),
        subregion: const MiddleAfrica(),
        latLng: const LatLng(15, 19),
        landlocked: true,
        bordersCodes: const ["Cmr", "Caf", "Lby", "Ner", "Nga", "Sdn"],
        areaMetric: 1284000,
        emoji: "🇹🇩",
        maps: const Maps(
          googleMaps: "ziUdAZ8skuNfx5Hx7",
          openStreetMaps: "relation/2361304",
        ),
        population: 16425859,
        gini: const Gini(year: 2011, coefficient: 43.3),
        fifa: "CHA",
        car: const Car(sign: "TCH/TD"),
        timezones: const ["UTC+01:00"],
      );
  @override
  List<FiatCurrency> get currencies => const [FiatXaf()];
  @override
  CapitalInfo get capitalInfo => const CapitalInfo(
    capital: Capital("N'Djamena"),
    latLng: LatLng(12.1, 15.03),
  );
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(language: LangEng(), female: "Chadian", male: "Chadian"),
    Demonyms(language: LangFra(), female: "Tchadienne", male: "Tchadien"),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(language: LangAra(), official: "جمهورية تشاد", common: "تشاد‎"),
    CountryName(
      language: LangFra(),
      official: "République du Tchad",
      common: "Tchad",
    ),
  ];
  @override
  List<NaturalLanguage> get languages => const [LangAra(), LangFra()];
}
