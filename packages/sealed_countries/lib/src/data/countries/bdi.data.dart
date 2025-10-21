// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/country.dart";

/// A class that represents the the Burundi country.
class CountryBdi extends WorldCountry {
  /// {@template sealed_world.countries_bdi_constructor}}
  /// Creates a instance of [CountryBdi] (Burundi country).
  ///
  /// ISO 3166-1 Alpha-3 code: `BDI`, ISO 3166-1 Alpha-2 code: `BI`.
  /// {@endtemplate}
  const factory CountryBdi() = _BdiFactory;

  const CountryBdi._()
    : super(
        name: const CountryName(
          language: LangEng(),
          official: "Republic of Burundi",
          common: "Burundi",
        ),
        tld: const [".bi"],
        code: "BDI",
        codeNumeric: "108",
        codeShort: "BI",
        cioc: "BDI",
        idd: const Idd(root: 2, suffixes: [57]),
        altSpellings: const [
          "BI",
          "Republic of Burundi",
          "Republika y'Uburundi",
          "République du Burundi",
        ],
        continent: const Africa(),
        subregion: const EasternAfrica(),
        latLng: const LatLng(-3.5, 30),
        landlocked: true,
        bordersCodes: const ["Cod", "Rwa", "Tza"],
        areaMetric: 27834,
        emoji: "🇧🇮",
        maps: const Maps(
          googleMaps: "RXPWoRrB9tfrJpUG7",
          openStreetMaps: "relation/195269",
        ),
        population: 14151540,
        gini: const Gini(year: 2013, coefficient: 38.6),
        fifa: "BDI",
        car: const Car(sign: "RU"),
        timezones: const ["UTC+02:00"],
      );
  @override
  List<FiatCurrency> get currencies => const [FiatBif()];
  @override
  CapitalInfo get capitalInfo => const CapitalInfo(
    capital: Capital("Gitega"),
    latLng: LatLng(-3.43, 29.93),
  );
  @override
  List<RegionalBloc> get regionalBlocs => const [BlocAU()];
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(language: LangEng(), female: "Burundian", male: "Burundian"),
    Demonyms(language: LangFra(), female: "Burundaise", male: "Burundais"),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(
      language: LangFra(),
      official: "République du Burundi",
      common: "Burundi",
    ),
    CountryName(
      language: LangRun(),
      official: "Repubulika y’Uburundi",
      common: "Uburundi",
    ),
  ];
  @override
  List<NaturalLanguage> get languages => const [
    LangFra(),
    LangRun(),
    LangEng(),
    LangSwa(),
  ];
}

extension type const _BdiFactory._(CountryBdi _) implements CountryBdi {
  const _BdiFactory() : this._(const CountryBdi._());
}
