// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/submodels/world_country.dart";

extension type const _CogFactory._(CountryCog _) implements CountryCog {
  const _CogFactory() : this._(const CountryCog._());
}

/// A class that represents the Republic of the Congo country.
class CountryCog extends WorldCountry {
  /// {@template sealed_world.country_cog_constructor}
  /// Creates a instance of [CountryCog] (Republic of the Congo country).
  ///
  /// ISO 3166-1 Alpha-3 code: `COG`, ISO 3166-1 Alpha-2 code: `CG`.
  /// {@endtemplate}
  const factory CountryCog() = _CogFactory;

  const CountryCog._()
    : super._(
        name: const CountryName(
          language: LangEng(),
          official: "Republic of the Congo",
          common: "Republic of the Congo",
        ),
        tld: const [".cg"],
        code: "COG",
        codeNumeric: "178",
        codeShort: "CG",
        cioc: "CGO",
        idd: const Idd(root: 2, suffixes: [42]),
        altSpellings: const ["CG", "Congo", "Congo-Brazzaville"],
        continent: const Africa(),
        subregion: const MiddleAfrica(),
        latLng: const LatLng(-1, 15),
        bordersCodes: const ["Ago", "Cmr", "Caf", "Cod", "Gab"],
        areaMetric: 342000,
        emoji: "🇨🇬",
        maps: const Maps(
          googleMaps: "Phf5dDDKdfCtuBTb6",
          openStreetMaps: "relation/192794",
        ),
        population: 6142180,
        gini: const Gini(year: 2011, coefficient: 48.9),
        fifa: "CGO",
        car: const Car(sign: "RCB"),
        timezones: const ["UTC+01:00"],
        hasCoatOfArms: false,
      );
  @override
  List<FiatCurrency> get currencies => const [FiatXaf()];
  @override
  CapitalInfo get capitalInfo => const CapitalInfo(
    capital: Capital("Brazzaville"),
    latLng: LatLng(-4.25, 15.28),
  );
  @override
  List<RegionalBloc> get regionalBlocs => const [BlocAU()];
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(language: LangEng(), female: "Congolese", male: "Congolese"),
    Demonyms(language: LangFra(), female: "Congolaise", male: "Congolais"),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(
      language: LangFra(),
      official: "République du Congo",
      common: "République du Congo",
    ),
    CountryName(
      language: LangKon(),
      official: "Repubilika ya Kongo",
      common: "Repubilika ya Kongo",
    ),
    CountryName(
      language: LangLin(),
      official: "Republíki ya Kongó",
      common: "Republíki ya Kongó",
    ),
  ];
  @override
  List<NaturalLanguage> get languages => const [
    LangFra(),
    LangKon(),
    LangLin(),
  ];
}
