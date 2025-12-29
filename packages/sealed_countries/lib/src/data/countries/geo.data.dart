// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/submodels/world_country.dart";

extension type const _GeoFactory._(CountryGeo _) implements CountryGeo {
  const _GeoFactory() : this._(const CountryGeo._());
}

/// A class that represents the Georgia country.
class CountryGeo extends WorldCountry {
  /// {@template sealed_world.country_geo_constructor}
  /// Creates a instance of [CountryGeo] (Georgia country).
  ///
  /// ISO 3166-1 Alpha-3 code: `GEO`, ISO 3166-1 Alpha-2 code: `GE`.
  /// {@endtemplate}
  const factory CountryGeo() = _GeoFactory;

  const CountryGeo._()
    : super._(
        name: const CountryName(
          language: LangEng(),
          official: "Georgia",
          common: "Georgia",
        ),
        tld: const [".ge"],
        code: "GEO",
        codeNumeric: "268",
        codeShort: "GE",
        cioc: "GEO",
        idd: const Idd(root: 9, suffixes: [95]),
        altSpellings: const ["GE", "Sakartvelo"],
        continent: const Asia(),
        subregion: const WesternAsia(),
        latLng: const LatLng(42, 43.5),
        bordersCodes: const ["Arm", "Aze", "Rus", "Tur"],
        areaMetric: 69700,
        emoji: "🇬🇪",
        maps: const Maps(
          googleMaps: "bvCaGBePR1ZEDK5cA",
          openStreetMaps: "relation/28699",
        ),
        population: 3714000,
        gini: const Gini(year: 2019, coefficient: 35.9),
        fifa: "GEO",
        car: const Car(sign: "GE"),
        timezones: const ["UTC+04:00"],
        postalCode: const PostalCode(
          format: "####",
          regExpPattern: r"^(\d{4})$",
        ),
      );
  @override
  List<FiatCurrency> get currencies => const [FiatGel()];
  @override
  CapitalInfo get capitalInfo => const CapitalInfo(
    capital: Capital("Tbilisi"),
    latLng: LatLng(41.68, 44.83),
  );
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(language: LangEng(), female: "Georgian", male: "Georgian"),
    Demonyms(language: LangFra(), female: "Géorgienne", male: "Géorgien"),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(
      language: LangKat(),
      official: "საქართველო",
      common: "საქართველო",
    ),
  ];
  @override
  List<NaturalLanguage> get languages => const [LangKat()];
}
