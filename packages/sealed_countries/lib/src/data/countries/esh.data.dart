// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/submodels/world_country.dart";

extension type const _EshFactory._(CountryEsh _) implements CountryEsh {
  const _EshFactory() : this._(const CountryEsh._());
}

/// A class that represents the Western Sahara country.
class CountryEsh extends WorldCountry {
  /// {@template sealed_world.country_esh_constructor}
  /// Creates a instance of [CountryEsh] (Western Sahara country).
  ///
  /// ISO 3166-1 Alpha-3 code: `ESH`, ISO 3166-1 Alpha-2 code: `EH`.
  /// {@endtemplate}
  const factory CountryEsh() = _EshFactory;

  const CountryEsh._()
    : super._(
        name: const CountryName(
          language: LangEng(),
          official: "Sahrawi Arab Democratic Republic",
          common: "Western Sahara",
        ),
        tld: const [".eh"],
        code: "ESH",
        codeNumeric: "732",
        codeShort: "EH",
        independent: false,
        unMember: false,
        idd: const Idd(root: 2, suffixes: [12]),
        altSpellings: const ["EH", "Taneẓroft Tutrimt"],
        continent: const Africa(),
        subregion: const NorthernAfrica(),
        latLng: const LatLng(24.5, -13),
        bordersCodes: const ["Dza", "Mrt", "Mar"],
        areaMetric: 266000,
        emoji: "🇪🇭",
        maps: const Maps(
          googleMaps: "7nU3mB69vP6zQp7A8",
          openStreetMaps: "relation/5441968",
        ),
        population: 565581,
        car: const Car(),
        timezones: const ["UTC+00:00"],
        hasCoatOfArms: false,
      );
  @override
  List<FiatCurrency> get currencies => const [FiatDzd(), FiatMad(), FiatMru()];
  @override
  CapitalInfo get capitalInfo => const CapitalInfo(
    capital: Capital("El Aaiún"),
    latLng: LatLng(-13.28, 27.14),
  );
  @override
  List<RegionalBloc> get regionalBlocs => const [BlocAU()];
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(language: LangEng(), female: "Sahrawi", male: "Sahrawi"),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(
      language: LangSpa(),
      official: "República Árabe Saharaui Democrática",
      common: "Sahara Occidental",
    ),
  ];
  @override
  List<NaturalLanguage> get languages => const [LangSpa()];
}
