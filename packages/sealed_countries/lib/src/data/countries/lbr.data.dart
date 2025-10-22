// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/country.dart";

extension type const _LbrFactory._(CountryLbr _) implements CountryLbr {
  const _LbrFactory() : this._(const CountryLbr._());
}

/// A class that represents the the Liberia country.
class CountryLbr extends WorldCountry {
  /// {@template sealed_world.country_lbr_constructor}
  /// Creates a instance of [CountryLbr] (Liberia country).
  ///
  /// ISO 3166-1 Alpha-3 code: `LBR`, ISO 3166-1 Alpha-2 code: `LR`.
  /// {@endtemplate}
  const factory CountryLbr() = _LbrFactory;

  const CountryLbr._()
    : super(
        name: const CountryName(
          language: LangEng(),
          official: "Republic of Liberia",
          common: "Liberia",
        ),
        tld: const [".lr"],
        code: "LBR",
        codeNumeric: "430",
        codeShort: "LR",
        cioc: "LBR",
        idd: const Idd(root: 2, suffixes: [31]),
        altSpellings: const ["LR", "Republic of Liberia"],
        continent: const Africa(),
        subregion: const WesternAfrica(),
        latLng: const LatLng(6.5, -9.5),
        bordersCodes: const ["Gin", "Civ", "Sle"],
        areaMetric: 111369,
        emoji: "🇱🇷",
        maps: const Maps(
          googleMaps: "4VsHsc2oeGeRL3wg6",
          openStreetMaps: "relation/192780",
        ),
        population: 5437249,
        gini: const Gini(year: 2016, coefficient: 35.3),
        fifa: "LBR",
        car: const Car(sign: "LB"),
        timezones: const ["UTC+00:00"],
        postalCode: const PostalCode(
          format: "####",
          regExpPattern: r"^(\d{4})$",
        ),
      );
  @override
  List<FiatCurrency> get currencies => const [FiatLrd()];
  @override
  CapitalInfo get capitalInfo => const CapitalInfo(
    capital: Capital("Monrovia"),
    latLng: LatLng(6.3, -10.8),
  );
  @override
  List<RegionalBloc> get regionalBlocs => const [BlocAU()];
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(language: LangEng(), female: "Liberian", male: "Liberian"),
    Demonyms(language: LangFra(), female: "Libérienne", male: "Libérien"),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(
      language: LangEng(),
      official: "Republic of Liberia",
      common: "Liberia",
    ),
  ];
  @override
  List<NaturalLanguage> get languages => const [LangEng()];
}
