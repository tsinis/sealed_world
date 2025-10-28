// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/country.dart";

extension type const _AusFactory._(CountryAus _) implements CountryAus {
  const _AusFactory() : this._(const CountryAus._());
}

/// A class that represents the Australia country.
class CountryAus extends WorldCountry {
  /// {@template sealed_world.country_aus_constructor}
  /// Creates a instance of [CountryAus] (Australia country).
  ///
  /// ISO 3166-1 Alpha-3 code: `AUS`, ISO 3166-1 Alpha-2 code: `AU`.
  /// {@endtemplate}
  const factory CountryAus() = _AusFactory;

  const CountryAus._()
    : super(
        name: const CountryName(
          language: LangEng(),
          official: "Commonwealth of Australia",
          common: "Australia",
        ),
        tld: const [".au"],
        code: "AUS",
        codeNumeric: "036",
        codeShort: "AU",
        cioc: "AUS",
        idd: const Idd(root: 6, suffixes: [1]),
        altSpellings: const ["AU"],
        continent: const Oceania(),
        subregion: const AustraliaAndNewZealand(),
        latLng: const LatLng(-27, 133),
        areaMetric: 7692024,
        emoji: "🇦🇺",
        maps: const Maps(
          googleMaps: "DcjaDa7UbhnZTndH6",
          openStreetMaps: "relation/80500",
        ),
        population: 25890773,
        gini: const Gini(year: 2014, coefficient: 34.4),
        fifa: "AUS",
        car: const Car(sign: "AUS", isRightSide: false),
        timezones: const [
          "UTC+05:00",
          "UTC+06:30",
          "UTC+07:00",
          "UTC+08:00",
          "UTC+09:30",
          "UTC+10:00",
          "UTC+10:30",
          "UTC+11:30",
        ],
        postalCode: const PostalCode(
          format: "####",
          regExpPattern: r"^(\d{4})$",
        ),
      );
  @override
  List<FiatCurrency> get currencies => const [FiatAud()];
  @override
  CapitalInfo get capitalInfo => const CapitalInfo(
    capital: Capital("Canberra"),
    latLng: LatLng(-35.27, 149.13),
  );
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(language: LangEng(), female: "Australian", male: "Australian"),
    Demonyms(language: LangFra(), female: "Australienne", male: "Australien"),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(
      language: LangEng(),
      official: "Commonwealth of Australia",
      common: "Australia",
    ),
  ];
  @override
  List<NaturalLanguage> get languages => const [LangEng()];
}
