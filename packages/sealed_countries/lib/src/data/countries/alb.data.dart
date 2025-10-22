// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/country.dart";

extension type const _AlbFactory._(CountryAlb _) implements CountryAlb {
  const _AlbFactory() : this._(const CountryAlb._());
}

/// A class that represents the the Albania country.
class CountryAlb extends WorldCountry {
  /// {@template sealed_world.country_alb_constructor}
  /// Creates a instance of [CountryAlb] (Albania country).
  ///
  /// ISO 3166-1 Alpha-3 code: `ALB`, ISO 3166-1 Alpha-2 code: `AL`.
  /// {@endtemplate}
  const factory CountryAlb() = _AlbFactory;

  const CountryAlb._()
    : super(
        name: const CountryName(
          language: LangEng(),
          official: "Republic of Albania",
          common: "Albania",
        ),
        tld: const [".al"],
        code: "ALB",
        codeNumeric: "008",
        codeShort: "AL",
        cioc: "ALB",
        idd: const Idd(root: 3, suffixes: [55]),
        altSpellings: const ["AL", "Shqipëri", "Shqipëria", "Shqipnia"],
        continent: const Europe(),
        subregion: const SouthwestEurope(),
        latLng: const LatLng(41, 20),
        bordersCodes: const ["Mne", "Grc", "Mkd", "Unk"],
        areaMetric: 28748,
        emoji: "🇦🇱",
        maps: const Maps(
          googleMaps: "BzN9cTuj68ZA8SyZ8",
          openStreetMaps: "relation/53292",
        ),
        population: 2837743,
        gini: const Gini(year: 2017, coefficient: 33.2),
        fifa: "ALB",
        car: const Car(sign: "AL"),
        timezones: const ["UTC+01:00"],
      );
  @override
  List<FiatCurrency> get currencies => const [FiatAll()];
  @override
  CapitalInfo get capitalInfo => const CapitalInfo(
    capital: Capital("Tirana"),
    latLng: LatLng(41.32, 19.82),
  );
  @override
  List<RegionalBloc> get regionalBlocs => const [BlocCEFTA()];
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(language: LangEng(), female: "Albanian", male: "Albanian"),
    Demonyms(language: LangFra(), female: "Albanaise", male: "Albanais"),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(
      language: LangSqi(),
      official: "Republika e Shqipërisë",
      common: "Shqipëria",
    ),
  ];
  @override
  List<NaturalLanguage> get languages => const [LangSqi()];
}
