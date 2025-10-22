// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/country.dart";

extension type const _GlpFactory._(CountryGlp _) implements CountryGlp {
  const _GlpFactory() : this._(const CountryGlp._());
}

/// A class that represents the Guadeloupe country.
class CountryGlp extends WorldCountry {
  /// {@template sealed_world.country_glp_constructor}
  /// Creates a instance of [CountryGlp] (Guadeloupe country).
  ///
  /// ISO 3166-1 Alpha-3 code: `GLP`, ISO 3166-1 Alpha-2 code: `GP`.
  /// {@endtemplate}
  const factory CountryGlp() = _GlpFactory;

  const CountryGlp._()
    : super(
        name: const CountryName(
          language: LangEng(),
          official: "Guadeloupe",
          common: "Guadeloupe",
        ),
        tld: const [".gp"],
        code: "GLP",
        codeNumeric: "312",
        codeShort: "GP",
        independent: false,
        unMember: false,
        idd: const Idd(root: 5, suffixes: [90]),
        altSpellings: const ["GP", "Gwadloup"],
        continent: const Americas(),
        subregion: const Caribbean(),
        latLng: const LatLng(16.25, -61.583333),
        areaMetric: 1628,
        emoji: "🇬🇵",
        maps: const Maps(
          googleMaps: "Dy9R2EufJtoWm8UN9",
          openStreetMaps: "relation/7109289",
        ),
        population: 378561,
        car: const Car(sign: "F"),
        timezones: const ["UTC-04:00"],
        postalCode: const PostalCode(regExpPattern: r"^((97|98)\d{3})$"),
      );
  @override
  List<FiatCurrency> get currencies => const [FiatEur()];
  @override
  CapitalInfo get capitalInfo => const CapitalInfo(
    capital: Capital("Basse-Terre"),
    latLng: LatLng(16.03, -61.73),
  );
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(language: LangEng(), female: "Guadeloupian", male: "Guadeloupian"),
    Demonyms(
      language: LangFra(),
      female: "Guadeloupéenne",
      male: "Guadeloupéen",
    ),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(
      language: LangFra(),
      official: "Guadeloupe",
      common: "Guadeloupe",
    ),
  ];
  @override
  List<NaturalLanguage> get languages => const [LangFra()];
}
