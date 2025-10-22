// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/country.dart";

extension type const _PseFactory._(CountryPse _) implements CountryPse {
  const _PseFactory() : this._(const CountryPse._());
}

/// A class that represents the the Palestine country.
class CountryPse extends WorldCountry {
  /// {@template sealed_world.country_pse_constructor}
  /// Creates a instance of [CountryPse] (Palestine country).
  ///
  /// ISO 3166-1 Alpha-3 code: `PSE`, ISO 3166-1 Alpha-2 code: `PS`.
  /// {@endtemplate}
  const factory CountryPse() = _PseFactory;

  const CountryPse._()
    : super(
        name: const CountryName(
          language: LangEng(),
          official: "State of Palestine",
          common: "Palestine",
        ),
        tld: const [".ps", "فلسطين."],
        code: "PSE",
        codeNumeric: "275",
        codeShort: "PS",
        cioc: "PLE",
        independent: false,
        unMember: false,
        idd: const Idd(root: 9, suffixes: [70]),
        altSpellings: const [
          "PS",
          "Palestine, State of",
          "State of Palestine",
          "Dawlat Filasṭin",
        ],
        continent: const Asia(),
        subregion: const WesternAsia(),
        latLng: const LatLng(31.9, 35.2),
        bordersCodes: const ["Isr", "Egy", "Jor"],
        areaMetric: 6220,
        emoji: "🇵🇸",
        maps: const Maps(
          googleMaps: "QvTbkRdmdWEoYAmt5",
          openStreetMaps: "relation/1703814",
        ),
        population: 4803269,
        gini: const Gini(year: 2016, coefficient: 33.7),
        fifa: "PLE",
        car: const Car(sign: "PS"),
        timezones: const ["UTC+02:00"],
        startOfWeek: Weekday.sunday,
      );
  @override
  List<FiatCurrency> get currencies => const [FiatEgp(), FiatIls(), FiatJod()];
  @override
  CapitalInfo get capitalInfo => const CapitalInfo(
    capital: Capital("Ramallah", deJure: "Jerusalem"),
    latLng: LatLng(31.9, 35.2),
  );
  @override
  List<RegionalBloc> get regionalBlocs => const [BlocAL()];
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(language: LangEng(), female: "Palestinian", male: "Palestinian"),
    Demonyms(language: LangFra(), female: "Palestinienne", male: "Palestinien"),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(language: LangAra(), official: "دولة فلسطين", common: "فلسطين"),
  ];
  @override
  List<NaturalLanguage> get languages => const [LangAra()];
}
