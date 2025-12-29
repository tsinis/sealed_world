// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/submodels/world_country.dart";

extension type const _KenFactory._(CountryKen _) implements CountryKen {
  const _KenFactory() : this._(const CountryKen._());
}

/// A class that represents the Kenya country.
class CountryKen extends WorldCountry {
  /// {@template sealed_world.country_ken_constructor}
  /// Creates a instance of [CountryKen] (Kenya country).
  ///
  /// ISO 3166-1 Alpha-3 code: `KEN`, ISO 3166-1 Alpha-2 code: `KE`.
  /// {@endtemplate}
  const factory CountryKen() = _KenFactory;

  const CountryKen._()
    : super._(
        name: const CountryName(
          language: LangEng(),
          official: "Republic of Kenya",
          common: "Kenya",
        ),
        tld: const [".ke"],
        code: "KEN",
        codeNumeric: "404",
        codeShort: "KE",
        cioc: "KEN",
        idd: const Idd(root: 2, suffixes: [54]),
        altSpellings: const ["KE", "Republic of Kenya", "Jamhuri ya Kenya"],
        continent: const Africa(),
        subregion: const EasternAfrica(),
        latLng: const LatLng(1, 38),
        bordersCodes: const ["Eth", "Som", "Ssd", "Tza", "Uga"],
        areaMetric: 580367,
        emoji: "🇰🇪",
        maps: const Maps(
          googleMaps: "Ni9M7wcCxf8bJHLX8",
          openStreetMaps: "relation/192798",
        ),
        population: 52428290,
        gini: const Gini(year: 2015, coefficient: 40.8),
        fifa: "KEN",
        car: const Car(sign: "EAK", isRightSide: false),
        timezones: const ["UTC+03:00"],
        postalCode: const PostalCode(),
      );
  @override
  List<FiatCurrency> get currencies => const [FiatKes()];
  @override
  CapitalInfo get capitalInfo => const CapitalInfo(
    capital: Capital("Nairobi"),
    latLng: LatLng(-1.28, 36.82),
  );
  @override
  List<RegionalBloc> get regionalBlocs => const [BlocAU()];
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(language: LangEng(), female: "Kenyan", male: "Kenyan"),
    Demonyms(language: LangFra(), female: "Kényane", male: "Kényan"),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(
      language: LangEng(),
      official: "Republic of Kenya",
      common: "Kenya",
    ),
    CountryName(
      language: LangSwa(),
      official: "Jamhuri ya Kenya",
      common: "Kenya",
    ),
  ];
  @override
  List<NaturalLanguage> get languages => const [LangEng(), LangSwa()];
}
