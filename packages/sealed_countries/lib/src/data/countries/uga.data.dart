// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/country.dart";

extension type const _UgaFactory._(CountryUga _) implements CountryUga {
  const _UgaFactory() : this._(const CountryUga._());
}

/// A class that represents the the Uganda country.
class CountryUga extends WorldCountry {
  /// {@template sealed_world.country_uga_constructor}
  /// Creates a instance of [CountryUga] (Uganda country).
  ///
  /// ISO 3166-1 Alpha-3 code: `UGA`, ISO 3166-1 Alpha-2 code: `UG`.
  /// {@endtemplate}
  const factory CountryUga() = _UgaFactory;

  const CountryUga._()
    : super(
        name: const CountryName(
          language: LangEng(),
          official: "Republic of Uganda",
          common: "Uganda",
        ),
        tld: const [".ug"],
        code: "UGA",
        codeNumeric: "800",
        codeShort: "UG",
        cioc: "UGA",
        idd: const Idd(root: 2, suffixes: [56]),
        altSpellings: const ["UG", "Republic of Uganda", "Jamhuri ya Uganda"],
        continent: const Africa(),
        subregion: const EasternAfrica(),
        latLng: const LatLng(1, 32),
        landlocked: true,
        bordersCodes: const ["Cod", "Ken", "Rwa", "Ssd", "Tza"],
        areaMetric: 241550,
        emoji: "🇺🇬",
        maps: const Maps(
          googleMaps: "Y7812hFiGa8LD9N68",
          openStreetMaps: "relation/192796",
        ),
        population: 49283041,
        gini: const Gini(year: 2016, coefficient: 42.8),
        fifa: "UGA",
        car: const Car(sign: "EAU", isRightSide: false),
        timezones: const ["UTC+03:00"],
      );
  @override
  List<FiatCurrency> get currencies => const [FiatUgx()];
  @override
  CapitalInfo get capitalInfo => const CapitalInfo(
    capital: Capital("Kampala"),
    latLng: LatLng(0.32, 32.55),
  );
  @override
  List<RegionalBloc> get regionalBlocs => const [BlocAU()];
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(language: LangEng(), female: "Ugandan", male: "Ugandan"),
    Demonyms(language: LangFra(), female: "Ougandaise", male: "Ougandais"),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(
      language: LangEng(),
      official: "Republic of Uganda",
      common: "Uganda",
    ),
    CountryName(
      language: LangSwa(),
      official: "Republic of Uganda",
      common: "Uganda",
    ),
  ];
  @override
  List<NaturalLanguage> get languages => const [LangEng(), LangSwa()];
}
