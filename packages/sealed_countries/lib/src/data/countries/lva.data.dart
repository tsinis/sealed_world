// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/submodels/world_country.dart";

extension type const _LvaFactory._(CountryLva _) implements CountryLva {
  const _LvaFactory() : this._(const CountryLva._());
}

/// A class that represents the Latvia country.
class CountryLva extends WorldCountry {
  /// {@template sealed_world.country_lva_constructor}
  /// Creates a instance of [CountryLva] (Latvia country).
  ///
  /// ISO 3166-1 Alpha-3 code: `LVA`, ISO 3166-1 Alpha-2 code: `LV`.
  /// {@endtemplate}
  const factory CountryLva() = _LvaFactory;

  const CountryLva._()
    : super._(
        name: const CountryName(
          language: LangEng(),
          official: "Republic of Latvia",
          common: "Latvia",
        ),
        tld: const [".lv"],
        code: "LVA",
        codeNumeric: "428",
        codeShort: "LV",
        cioc: "LAT",
        idd: const Idd(root: 3, suffixes: [71]),
        altSpellings: const ["LV", "Republic of Latvia", "Latvijas Republika"],
        continent: const Europe(),
        subregion: const NorthernEurope(),
        latLng: const LatLng(57, 25),
        bordersCodes: const ["Blr", "Est", "Ltu", "Rus"],
        areaMetric: 64559,
        emoji: "🇱🇻",
        maps: const Maps(
          googleMaps: "iQpUkH7ghq31ZtXe9",
          openStreetMaps: "relation/72594",
        ),
        population: 1842226,
        gini: const Gini(year: 2018, coefficient: 35.1),
        fifa: "LVA",
        car: const Car(sign: "LV"),
        timezones: const ["UTC+02:00"],
        postalCode: const PostalCode(
          format: "LV-####",
          regExpPattern: r"^(?:LV)*(\d{4})$",
        ),
      );
  @override
  List<FiatCurrency> get currencies => const [FiatEur()];
  @override
  CapitalInfo get capitalInfo =>
      const CapitalInfo(capital: Capital("Riga"), latLng: LatLng(56.95, 24.1));
  @override
  List<RegionalBloc> get regionalBlocs => const [BlocEU()];
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(language: LangEng(), female: "Latvian", male: "Latvian"),
    Demonyms(language: LangFra(), female: "Lettone", male: "Letton"),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(
      language: LangLav(),
      official: "Latvijas Republika",
      common: "Latvija",
    ),
  ];
  @override
  List<NaturalLanguage> get languages => const [LangLav()];
}
