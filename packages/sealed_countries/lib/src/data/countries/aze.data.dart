// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/country.dart";

extension type const _AzeFactory._(CountryAze _) implements CountryAze {
  const _AzeFactory() : this._(const CountryAze._());
}

/// A class that represents the Azerbaijan country.
class CountryAze extends WorldCountry {
  /// {@template sealed_world.country_aze_constructor}
  /// Creates a instance of [CountryAze] (Azerbaijan country).
  ///
  /// ISO 3166-1 Alpha-3 code: `AZE`, ISO 3166-1 Alpha-2 code: `AZ`.
  /// {@endtemplate}
  const factory CountryAze() = _AzeFactory;

  const CountryAze._()
    : super(
        name: const CountryName(
          language: LangEng(),
          official: "Republic of Azerbaijan",
          common: "Azerbaijan",
        ),
        tld: const [".az"],
        code: "AZE",
        codeNumeric: "031",
        codeShort: "AZ",
        cioc: "AZE",
        idd: const Idd(root: 9, suffixes: [94]),
        altSpellings: const [
          "AZ",
          "Republic of Azerbaijan",
          "Azərbaycan Respublikası",
        ],
        continent: const Asia(),
        subregion: const WesternAsia(),
        latLng: const LatLng(40.5, 47.5),
        landlocked: true,
        bordersCodes: const ["Arm", "Geo", "Irn", "Rus", "Tur"],
        areaMetric: 86600,
        emoji: "🇦🇿",
        maps: const Maps(
          googleMaps: "az3Zz7ar2aoB9AUc6",
          openStreetMaps: "relation/364110",
        ),
        population: 10110116,
        gini: const Gini(year: 2008, coefficient: 33.7),
        fifa: "AZE",
        car: const Car(sign: "AZ"),
        timezones: const ["UTC+04:00"],
        postalCode: const PostalCode(
          format: "AZ ####",
          regExpPattern: r"^(?:AZ)*(\d{4})$",
        ),
      );
  @override
  List<FiatCurrency> get currencies => const [FiatAzn()];
  @override
  CapitalInfo get capitalInfo =>
      const CapitalInfo(capital: Capital("Baku"), latLng: LatLng(40.38, 49.87));
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(language: LangEng(), female: "Azerbaijani", male: "Azerbaijani"),
    Demonyms(
      language: LangFra(),
      female: "Azerbaïdjanaise",
      male: "Azerbaïdjanais",
    ),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(
      language: LangAze(),
      official: "Azərbaycan Respublikası",
      common: "Azərbaycan",
    ),
  ];
  @override
  List<NaturalLanguage> get languages => const [LangAze()];
}
