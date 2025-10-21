// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/country.dart";

/// A class that represents the the Guatemala country.
class CountryGtm extends WorldCountry {
  /// {@template sealed_world.countries_gtm_constructor}}
  /// Creates a instance of [CountryGtm] (Guatemala country).
  ///
  /// ISO 3166-1 Alpha-3 code: `GTM`, ISO 3166-1 Alpha-2 code: `GT`.
  /// {@endtemplate}
  const factory CountryGtm() = _GtmFactory;

  const CountryGtm._()
    : super(
        name: const CountryName(
          language: LangEng(),
          official: "Republic of Guatemala",
          common: "Guatemala",
        ),
        tld: const [".gt"],
        code: "GTM",
        codeNumeric: "320",
        codeShort: "GT",
        cioc: "GUA",
        idd: const Idd(root: 50, suffixes: [2]),
        altSpellings: const ["GT"],
        continent: const Americas(),
        subregion: const CentralAmerica(),
        latLng: const LatLng(15.5, -90.25),
        bordersCodes: const ["Blz", "Slv", "Hnd", "Mex"],
        areaMetric: 108889,
        emoji: "🇬🇹",
        maps: const Maps(
          googleMaps: "JoRAbem4Hxb9FYbVA",
          openStreetMaps: "relation/1521463",
        ),
        population: 17980803,
        gini: const Gini(year: 2014, coefficient: 48.3),
        fifa: "GUA",
        car: const Car(sign: "GCA"),
        timezones: const ["UTC-06:00"],
        postalCode: const PostalCode(),
      );
  @override
  List<FiatCurrency> get currencies => const [FiatGtq()];
  @override
  CapitalInfo get capitalInfo => const CapitalInfo(
    capital: Capital("Guatemala City"),
    latLng: LatLng(14.62, -90.52),
  );
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(language: LangEng(), female: "Guatemalan", male: "Guatemalan"),
    Demonyms(
      language: LangFra(),
      female: "Guatémaltèque",
      male: "Guatémaltèque",
    ),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(
      language: LangSpa(),
      official: "República de Guatemala",
      common: "Guatemala",
    ),
  ];
  @override
  List<NaturalLanguage> get languages => const [LangSpa()];
}

extension type const _GtmFactory._(CountryGtm _) implements CountryGtm {
  const _GtmFactory() : this._(const CountryGtm._());
}
