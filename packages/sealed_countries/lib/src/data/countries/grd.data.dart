// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/country.dart";

extension type const _GrdFactory._(CountryGrd _) implements CountryGrd {
  const _GrdFactory() : this._(const CountryGrd._());
}

/// A class that represents the Grenada country.
class CountryGrd extends WorldCountry {
  /// {@template sealed_world.country_grd_constructor}
  /// Creates a instance of [CountryGrd] (Grenada country).
  ///
  /// ISO 3166-1 Alpha-3 code: `GRD`, ISO 3166-1 Alpha-2 code: `GD`.
  /// {@endtemplate}
  const factory CountryGrd() = _GrdFactory;

  const CountryGrd._()
    : super(
        name: const CountryName(
          language: LangEng(),
          official: "Grenada",
          common: "Grenada",
        ),
        tld: const [".gd"],
        code: "GRD",
        codeNumeric: "308",
        codeShort: "GD",
        cioc: "GRN",
        idd: const Idd(root: 1, suffixes: [473]),
        altSpellings: const ["GD"],
        continent: const Americas(),
        subregion: const Caribbean(),
        latLng: const LatLng(12.11666666, -61.66666666),
        areaMetric: 344,
        emoji: "🇬🇩",
        maps: const Maps(
          googleMaps: "rqWyfUAt4xhvk1Zy9",
          openStreetMaps: "relation/550727",
        ),
        population: 114621,
        fifa: "GRN",
        car: const Car(sign: "WG", isRightSide: false),
        timezones: const ["UTC-04:00"],
      );
  @override
  List<FiatCurrency> get currencies => const [FiatXcd()];
  @override
  CapitalInfo get capitalInfo => const CapitalInfo(
    capital: Capital("St. George's"),
    latLng: LatLng(12.056, -61.7484),
  );
  @override
  List<RegionalBloc> get regionalBlocs => const [BlocCAIS()];
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(language: LangEng(), female: "Grenadian", male: "Grenadian"),
    Demonyms(language: LangFra(), female: "Grenadienne", male: "Grenadien"),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(language: LangEng(), official: "Grenada", common: "Grenada"),
  ];
  @override
  List<NaturalLanguage> get languages => const [LangEng()];
}
