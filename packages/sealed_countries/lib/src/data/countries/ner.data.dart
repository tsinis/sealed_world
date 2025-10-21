// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/country.dart";

/// A class that represents the the Niger country.
class CountryNer extends WorldCountry {
  /// {@template sealed_world.countries_ner_constructor}}
  /// Creates a instance of [CountryNer] (Niger country).
  ///
  /// ISO 3166-1 Alpha-3 code: `NER`, ISO 3166-1 Alpha-2 code: `NE`.
  /// {@endtemplate}
  const factory CountryNer() = _NerFactory;

  const CountryNer._()
    : super(
        name: const CountryName(
          language: LangEng(),
          official: "Republic of Niger",
          common: "Niger",
        ),
        tld: const [".ne"],
        code: "NER",
        codeNumeric: "562",
        codeShort: "NE",
        cioc: "NIG",
        idd: const Idd(root: 2, suffixes: [27]),
        altSpellings: const ["NE", "Nijar"],
        continent: const Africa(),
        subregion: const WesternAfrica(),
        latLng: const LatLng(16, 8),
        landlocked: true,
        bordersCodes: const ["Dza", "Ben", "Bfa", "Tcd", "Lby", "Mli", "Nga"],
        areaMetric: 1267000,
        emoji: "🇳🇪",
        maps: const Maps(
          googleMaps: "VKNU2TLsZcgxM49c8",
          openStreetMaps: "relation/192786",
        ),
        population: 24206636,
        gini: const Gini(year: 2014, coefficient: 34.3),
        fifa: "NIG",
        car: const Car(sign: "RN"),
        timezones: const ["UTC+01:00"],
        postalCode: const PostalCode(
          format: "####",
          regExpPattern: r"^(\d{4})$",
        ),
      );
  @override
  List<FiatCurrency> get currencies => const [FiatXof()];
  @override
  CapitalInfo get capitalInfo => const CapitalInfo(
    capital: Capital("Niamey"),
    latLng: LatLng(13.52, 2.12),
  );
  @override
  List<RegionalBloc> get regionalBlocs => const [BlocAU()];
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(language: LangEng(), female: "Nigerien", male: "Nigerien"),
    Demonyms(language: LangFra(), female: "Nigérienne", male: "Nigérien"),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(
      language: LangFra(),
      official: "République du Niger",
      common: "Niger",
    ),
  ];
  @override
  List<NaturalLanguage> get languages => const [LangFra()];
}

extension type const _NerFactory._(CountryNer _) implements CountryNer {
  const _NerFactory() : this._(const CountryNer._());
}
