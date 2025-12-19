// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/country.dart";

/// A class that represents the Kosovo country.
class CountryUnk extends WorldCountry {
  /// {@template sealed_world.country_unk_constructor}
  /// Creates a instance of [CountryUnk] (Kosovo country).
  ///
  /// ISO 3166-1 Alpha-3 code: `UNK`, ISO 3166-1 Alpha-2 code: `XK`.
  /// {@endtemplate}
  const factory CountryUnk() = _UnkFactory;

  const CountryUnk._()
    : super.custom(
        name: const CountryName(
          language: LangEng(),
          official: "Republic of Kosovo",
          common: "Kosovo",
        ),
        code: "UNK",
        codeNumeric: "   ",
        codeShort: "XK",
        cioc: "KOS",
        unMember: false,
        idd: const Idd(root: 3, suffixes: [83]),
        altSpellings: const ["XK", "Република Косово"],
        continent: const Europe(),
        subregion: const SouthwestEurope(),
        latLng: const LatLng(42.666_667, 21.166_667),
        landlocked: true,
        bordersCodes: const ["Alb", "Mkd", "Mne", "Srb"],
        areaMetric: 10908,
        emoji: "🇽🇰",
        maps: const Maps(
          googleMaps: "CSC4Yc8SWPgburuD9",
          openStreetMaps: "relation/2088990",
        ),
        population: 1_775_378,
        gini: const Gini(year: 2017, coefficient: 29),
        fifa: "KVX",
        car: const Car(sign: "CS"),
        timezones: const ["UTC+01:00"],
      );
  @override
  List<FiatCurrency> get currencies => const [FiatEur()];
  @override
  CapitalInfo get capitalInfo => const CapitalInfo(
    capital: Capital("Pristina"),
    latLng: LatLng(42.67, 21.17),
  );
  @override
  List<RegionalBloc> get regionalBlocs => const [BlocCEFTA()];
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(language: LangEng(), female: "Kosovar", male: "Kosovar"),
    Demonyms(language: LangFra(), female: "Kosovare", male: "Kosovar"),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(
      language: LangSqi(),
      official: "Republika e Kosovës",
      common: "Kosova",
    ),
    CountryName(
      language: LangSrp(),
      official: "Република Косово",
      common: "Косово",
    ),
  ];
  @override
  List<NaturalLanguage> get languages => const [LangSrp(), LangSqi()];
}

extension type const _UnkFactory._(CountryUnk _) implements CountryUnk {
  const _UnkFactory() : this._(const CountryUnk._());
}
