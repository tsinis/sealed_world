// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/country.dart";

extension type const _SenFactory._(CountrySen _) implements CountrySen {
  const _SenFactory() : this._(const CountrySen._());
}

/// A class that represents the Senegal country.
class CountrySen extends WorldCountry {
  /// {@template sealed_world.country_sen_constructor}
  /// Creates a instance of [CountrySen] (Senegal country).
  ///
  /// ISO 3166-1 Alpha-3 code: `SEN`, ISO 3166-1 Alpha-2 code: `SN`.
  /// {@endtemplate}
  const factory CountrySen() = _SenFactory;

  const CountrySen._()
    : super(
        name: const CountryName(
          language: LangEng(),
          official: "Republic of Senegal",
          common: "Senegal",
        ),
        tld: const [".sn"],
        code: "SEN",
        codeNumeric: "686",
        codeShort: "SN",
        cioc: "SEN",
        idd: const Idd(root: 2, suffixes: [21]),
        altSpellings: const [
          "SN",
          "Republic of Senegal",
          "République du Sénégal",
        ],
        continent: const Africa(),
        subregion: const WesternAfrica(),
        latLng: const LatLng(14, -14),
        bordersCodes: const ["Gmb", "Gin", "Gnb", "Mli", "Mrt"],
        areaMetric: 196722,
        emoji: "🇸🇳",
        maps: const Maps(
          googleMaps: "o5f1uD5nyihCL3HCA",
          openStreetMaps: "relation/192775",
        ),
        population: 16743930,
        gini: const Gini(year: 2011, coefficient: 40.3),
        fifa: "SEN",
        car: const Car(sign: "SN"),
        timezones: const ["UTC+00:00"],
        postalCode: const PostalCode(),
      );
  @override
  List<FiatCurrency> get currencies => const [FiatXof()];
  @override
  CapitalInfo get capitalInfo => const CapitalInfo(
    capital: Capital("Dakar"),
    latLng: LatLng(14.73, -17.63),
  );
  @override
  List<RegionalBloc> get regionalBlocs => const [BlocAU()];
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(language: LangEng(), female: "Senegalese", male: "Senegalese"),
    Demonyms(language: LangFra(), female: "Sénégalaise", male: "Sénégalais"),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(
      language: LangFra(),
      official: "République du Sénégal",
      common: "Sénégal",
    ),
  ];
  @override
  List<NaturalLanguage> get languages => const [LangFra()];
}
