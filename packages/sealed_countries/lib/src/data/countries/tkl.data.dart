// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/country.dart";

extension type const _TklFactory._(CountryTkl _) implements CountryTkl {
  const _TklFactory() : this._(const CountryTkl._());
}

/// A class that represents the Tokelau country.
class CountryTkl extends WorldCountry {
  /// {@template sealed_world.country_tkl_constructor}
  /// Creates a instance of [CountryTkl] (Tokelau country).
  ///
  /// ISO 3166-1 Alpha-3 code: `TKL`, ISO 3166-1 Alpha-2 code: `TK`.
  /// {@endtemplate}
  const factory CountryTkl() = _TklFactory;

  const CountryTkl._()
    : super(
        name: const CountryName(
          language: LangEng(),
          official: "Tokelau",
          common: "Tokelau",
        ),
        tld: const [".tk"],
        code: "TKL",
        codeNumeric: "772",
        codeShort: "TK",
        independent: false,
        unMember: false,
        idd: const Idd(root: 6, suffixes: [90]),
        altSpellings: const ["TK"],
        continent: const Oceania(),
        subregion: const Polynesia(),
        latLng: const LatLng(-9, -172),
        areaMetric: 12,
        emoji: "🇹🇰",
        maps: const Maps(
          googleMaps: "Ap5qN8qien6pT9UN6",
          openStreetMaps: "relation/2186600",
        ),
        population: 1411,
        car: const Car(isRightSide: false),
        timezones: const ["UTC+13:00"],
        hasCoatOfArms: false,
      );
  @override
  List<FiatCurrency> get currencies => const [FiatNzd()];
  @override
  CapitalInfo get capitalInfo => const CapitalInfo(
    capital: Capital("Fakaofo"),
    latLng: LatLng(-9.38, -171.22),
  );
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(language: LangEng(), female: "Tokelauan", male: "Tokelauan"),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(language: LangEng(), official: "Tokelau", common: "Tokelau"),
    CountryName(language: LangSmo(), official: "Tokelau", common: "Tokelau"),
  ];
  @override
  List<NaturalLanguage> get languages => const [LangEng(), LangSmo()];
}
