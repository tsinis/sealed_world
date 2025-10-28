// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/country.dart";

extension type const _AfgFactory._(CountryAfg _) implements CountryAfg {
  const _AfgFactory() : this._(const CountryAfg._());
}

/// A class that represents the Afghanistan country.
class CountryAfg extends WorldCountry {
  /// {@template sealed_world.country_afg_constructor}
  /// Creates a instance of [CountryAfg] (Afghanistan country).
  ///
  /// ISO 3166-1 Alpha-3 code: `AFG`, ISO 3166-1 Alpha-2 code: `AF`.
  /// {@endtemplate}
  const factory CountryAfg() = _AfgFactory;

  const CountryAfg._()
    : super(
        name: const CountryName(
          language: LangEng(),
          official: "Islamic Emirate of Afghanistan",
          common: "Afghanistan",
        ),
        tld: const [".af"],
        code: "AFG",
        codeNumeric: "004",
        codeShort: "AF",
        cioc: "AFG",
        idd: const Idd(root: 9, suffixes: [3]),
        altSpellings: const ["AF", "Afġānistān"],
        continent: const Asia(),
        subregion: const SouthernAsia(),
        latLng: const LatLng(33, 65),
        landlocked: true,
        bordersCodes: const ["Irn", "Pak", "Tkm", "Uzb", "Tjk", "Chn"],
        areaMetric: 652230,
        emoji: "🇦🇫",
        maps: const Maps(
          googleMaps: "BXBGw7yUUFknCfva9",
          openStreetMaps: "relation/303427",
        ),
        population: 40218234,
        fifa: "AFG",
        car: const Car(sign: "AFG"),
        timezones: const ["UTC+04:30"],
      );
  @override
  List<FiatCurrency> get currencies => const [FiatAfn()];
  @override
  CapitalInfo get capitalInfo => const CapitalInfo(
    capital: Capital("Kabul"),
    latLng: LatLng(34.52, 69.18),
  );
  @override
  List<RegionalBloc> get regionalBlocs => const [BlocSAARC()];
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(language: LangEng(), female: "Afghan", male: "Afghan"),
    Demonyms(language: LangFra(), female: "Afghane", male: "Afghan"),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(
      language: LangPus(),
      official: "د افغانستان اسلامي امارت",
      common: "افغانستان",
    ),
    CountryName(
      language: LangTuk(),
      official: "Owganystan Yslam Emirligi",
      common: "Owganystan",
    ),
  ];
  @override
  List<NaturalLanguage> get languages => const [LangPus()];
}
