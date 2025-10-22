// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/country.dart";

extension type const _BgdFactory._(CountryBgd _) implements CountryBgd {
  const _BgdFactory() : this._(const CountryBgd._());
}

/// A class that represents the Bangladesh country.
class CountryBgd extends WorldCountry {
  /// {@template sealed_world.country_bgd_constructor}
  /// Creates a instance of [CountryBgd] (Bangladesh country).
  ///
  /// ISO 3166-1 Alpha-3 code: `BGD`, ISO 3166-1 Alpha-2 code: `BD`.
  /// {@endtemplate}
  const factory CountryBgd() = _BgdFactory;

  const CountryBgd._()
    : super(
        name: const CountryName(
          language: LangEng(),
          official: "People's Republic of Bangladesh",
          common: "Bangladesh",
        ),
        tld: const [".bd"],
        code: "BGD",
        codeNumeric: "050",
        codeShort: "BD",
        cioc: "BAN",
        idd: const Idd(root: 8, suffixes: [80]),
        altSpellings: const [
          "BD",
          "People's Republic of Bangladesh",
          "Gônôprôjatôntri Bangladesh",
        ],
        continent: const Asia(),
        subregion: const SouthernAsia(),
        latLng: const LatLng(24, 90),
        bordersCodes: const ["Mmr", "Ind"],
        areaMetric: 147570,
        emoji: "🇧🇩",
        maps: const Maps(
          googleMaps: "op6gmLbHcvv6rLhH6",
          openStreetMaps: "relation/184640",
        ),
        population: 169828911,
        gini: const Gini(year: 2016, coefficient: 32.4),
        fifa: "BAN",
        car: const Car(sign: "BD", isRightSide: false),
        timezones: const ["UTC+06:00"],
        startOfWeek: Weekday.sunday,
        postalCode: const PostalCode(
          format: "####",
          regExpPattern: r"^(\d{4})$",
        ),
      );
  @override
  List<FiatCurrency> get currencies => const [FiatBdt()];
  @override
  CapitalInfo get capitalInfo =>
      const CapitalInfo(capital: Capital("Dhaka"), latLng: LatLng(23.72, 90.4));
  @override
  List<RegionalBloc> get regionalBlocs => const [BlocSAARC()];
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(language: LangEng(), female: "Bangladeshi", male: "Bangladeshi"),
    Demonyms(language: LangFra(), female: "Bangladaise", male: "Bangladais"),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(
      language: LangBen(),
      official: "গণপ্রজাতন্ত্রী বাংলাদেশ",
      common: "বাংলাদেশ",
    ),
  ];
  @override
  List<NaturalLanguage> get languages => const [LangBen()];
}
