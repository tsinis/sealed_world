// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/submodels/world_country.dart";

extension type const _MozFactory._(CountryMoz _) implements CountryMoz {
  const _MozFactory() : this._(const CountryMoz._());
}

/// A class that represents the Mozambique country.
class CountryMoz extends WorldCountry {
  /// {@template sealed_world.country_moz_constructor}
  /// Creates a instance of [CountryMoz] (Mozambique country).
  ///
  /// ISO 3166-1 Alpha-3 code: `MOZ`, ISO 3166-1 Alpha-2 code: `MZ`.
  /// {@endtemplate}
  const factory CountryMoz() = _MozFactory;

  const CountryMoz._()
    : super._(
        name: const CountryName(
          language: LangEng(),
          official: "Republic of Mozambique",
          common: "Mozambique",
        ),
        tld: const [".mz"],
        code: "MOZ",
        codeNumeric: "508",
        codeShort: "MZ",
        cioc: "MOZ",
        idd: const Idd(root: 2, suffixes: [58]),
        altSpellings: const [
          "MZ",
          "Republic of Mozambique",
          "República de Moçambique",
        ],
        continent: const Africa(),
        subregion: const EasternAfrica(),
        latLng: const LatLng(-18.25, 35),
        bordersCodes: const ["Mwi", "Zaf", "Swz", "Tza", "Zmb", "Zwe"],
        areaMetric: 801590,
        emoji: "🇲🇿",
        maps: const Maps(
          googleMaps: "xCLcY9fzU6x4Pueu5",
          openStreetMaps: "relation/195273",
        ),
        population: 31255435,
        gini: const Gini(year: 2014, coefficient: 54),
        fifa: "MOZ",
        car: const Car(sign: "MOC", isRightSide: false),
        timezones: const ["UTC+02:00"],
        postalCode: const PostalCode(
          format: "####",
          regExpPattern: r"^(\d{4})$",
        ),
      );
  @override
  List<FiatCurrency> get currencies => const [FiatMzn()];
  @override
  CapitalInfo get capitalInfo => const CapitalInfo(
    capital: Capital("Maputo"),
    latLng: LatLng(-25.95, 32.58),
  );
  @override
  List<RegionalBloc> get regionalBlocs => const [BlocAU()];
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(language: LangEng(), female: "Mozambican", male: "Mozambican"),
    Demonyms(language: LangFra(), female: "Mozambicaine", male: "Mozambicain"),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(
      language: LangPor(),
      official: "República de Moçambique",
      common: "Moçambique",
    ),
  ];
  @override
  List<NaturalLanguage> get languages => const [LangPor()];
}
