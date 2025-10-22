// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/country.dart";

extension type const _MltFactory._(CountryMlt _) implements CountryMlt {
  const _MltFactory() : this._(const CountryMlt._());
}

/// A class that represents the Malta country.
class CountryMlt extends WorldCountry {
  /// {@template sealed_world.country_mlt_constructor}
  /// Creates a instance of [CountryMlt] (Malta country).
  ///
  /// ISO 3166-1 Alpha-3 code: `MLT`, ISO 3166-1 Alpha-2 code: `MT`.
  /// {@endtemplate}
  const factory CountryMlt() = _MltFactory;

  const CountryMlt._()
    : super(
        name: const CountryName(
          language: LangEng(),
          official: "Republic of Malta",
          common: "Malta",
        ),
        tld: const [".mt"],
        code: "MLT",
        codeNumeric: "470",
        codeShort: "MT",
        cioc: "MLT",
        idd: const Idd(root: 3, suffixes: [56]),
        altSpellings: const ["MT", "Republic of Malta", "Repubblika ta' Malta"],
        continent: const Europe(),
        subregion: const SouthernEurope(),
        latLng: const LatLng(35.9375, 14.3754),
        areaMetric: 316,
        emoji: "🇲🇹",
        maps: const Maps(
          googleMaps: "skXCqguxDxxEKVk47",
          openStreetMaps: "relation/365307",
        ),
        population: 519562,
        gini: const Gini(year: 2020, coefficient: 31.4),
        fifa: "MLT",
        car: const Car(sign: "M", isRightSide: false),
        timezones: const ["UTC+01:00"],
        postalCode: const PostalCode(
          format: "@@@ ###|@@@ ##",
          regExpPattern: r"^([A-Z]{3}\d{2}\d?)$",
        ),
      );
  @override
  List<FiatCurrency> get currencies => const [FiatEur()];
  @override
  CapitalInfo get capitalInfo => const CapitalInfo(
    capital: Capital("Valletta"),
    latLng: LatLng(35.89, 14.51),
  );
  @override
  List<RegionalBloc> get regionalBlocs => const [BlocEU()];
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(language: LangEng(), female: "Maltese", male: "Maltese"),
    Demonyms(language: LangFra(), female: "Maltaise", male: "Maltais"),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(
      language: LangEng(),
      official: "Republic of Malta",
      common: "Malta",
    ),
    CountryName(
      language: LangMlt(),
      official: "Repubblika ta' Malta",
      common: "Malta",
    ),
  ];
  @override
  List<NaturalLanguage> get languages => const [LangEng(), LangMlt()];
}
