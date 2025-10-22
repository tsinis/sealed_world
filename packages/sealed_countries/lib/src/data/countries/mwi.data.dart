// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/country.dart";

extension type const _MwiFactory._(CountryMwi _) implements CountryMwi {
  const _MwiFactory() : this._(const CountryMwi._());
}

/// A class that represents the the Malawi country.
class CountryMwi extends WorldCountry {
  /// {@template sealed_world.country_mwi_constructor}
  /// Creates a instance of [CountryMwi] (Malawi country).
  ///
  /// ISO 3166-1 Alpha-3 code: `MWI`, ISO 3166-1 Alpha-2 code: `MW`.
  /// {@endtemplate}
  const factory CountryMwi() = _MwiFactory;

  const CountryMwi._()
    : super(
        name: const CountryName(
          language: LangEng(),
          official: "Republic of Malawi",
          common: "Malawi",
        ),
        tld: const [".mw"],
        code: "MWI",
        codeNumeric: "454",
        codeShort: "MW",
        cioc: "MAW",
        idd: const Idd(root: 2, suffixes: [65]),
        altSpellings: const ["MW", "Republic of Malawi"],
        continent: const Africa(),
        subregion: const EasternAfrica(),
        latLng: const LatLng(-13.5, 34),
        landlocked: true,
        bordersCodes: const ["Moz", "Tza", "Zmb"],
        areaMetric: 118484,
        emoji: "🇲🇼",
        maps: const Maps(
          googleMaps: "mc6z83pW9m98X2Ef6",
          openStreetMaps: "relation/195290",
        ),
        population: 19129955,
        gini: const Gini(year: 2016, coefficient: 44.7),
        fifa: "MWI",
        car: const Car(sign: "MW", isRightSide: false),
        timezones: const ["UTC+02:00"],
      );
  @override
  List<FiatCurrency> get currencies => const [FiatMwk()];
  @override
  CapitalInfo get capitalInfo => const CapitalInfo(
    capital: Capital("Lilongwe"),
    latLng: LatLng(-13.97, 33.78),
  );
  @override
  List<RegionalBloc> get regionalBlocs => const [BlocAU()];
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(language: LangEng(), female: "Malawian", male: "Malawian"),
    Demonyms(language: LangFra(), female: "Malawienne", male: "Malawien"),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(
      language: LangEng(),
      official: "Republic of Malawi",
      common: "Malawi",
    ),
    CountryName(
      language: LangNya(),
      official: "Chalo cha Malawi, Dziko la Malaŵi",
      common: "Malaŵi",
    ),
  ];
  @override
  List<NaturalLanguage> get languages => const [LangEng(), LangNya()];
}
