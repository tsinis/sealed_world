// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/country.dart";

/// A class that represents the the Greenland country.
class CountryGrl extends WorldCountry {
  /// {@template sealed_world.countries_grl_constructor}}
  /// Creates a instance of [CountryGrl] (Greenland country).
  ///
  /// ISO 3166-1 Alpha-3 code: `GRL`, ISO 3166-1 Alpha-2 code: `GL`.
  /// {@endtemplate}
  const factory CountryGrl() = _GrlFactory;

  const CountryGrl._()
    : super(
        name: const CountryName(
          language: LangEng(),
          official: "Greenland",
          common: "Greenland",
        ),
        tld: const [".gl"],
        code: "GRL",
        codeNumeric: "304",
        codeShort: "GL",
        independent: false,
        unMember: false,
        idd: const Idd(root: 2, suffixes: [99]),
        altSpellings: const ["GL", "Grønland"],
        continent: const Americas(),
        subregion: const NorthAmerica(),
        latLng: const LatLng(72, -40),
        areaMetric: 2166086,
        emoji: "🇬🇱",
        maps: const Maps(
          googleMaps: "j3289UPEQXt1ceSy8",
          openStreetMaps: "relation/2184073",
        ),
        population: 56367,
        car: const Car(sign: "DK"),
        timezones: const ["UTC-04:00", "UTC-03:00", "UTC-01:00", "UTC+00:00"],
        postalCode: const PostalCode(
          format: "####",
          regExpPattern: r"^(\d{4})$",
        ),
      );
  @override
  List<FiatCurrency> get currencies => const [FiatDkk()];
  @override
  CapitalInfo get capitalInfo => const CapitalInfo(
    capital: Capital("Nuuk"),
    latLng: LatLng(64.18, -51.75),
  );
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(language: LangEng(), female: "Greenlandic", male: "Greenlandic"),
    Demonyms(
      language: LangFra(),
      female: "Groenlandaise",
      male: "Groenlandais",
    ),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(
      language: LangKal(),
      official: "Kalaallit Nunaat",
      common: "Kalaallit Nunaat",
    ),
  ];
  @override
  List<NaturalLanguage> get languages => const [LangKal()];
}

extension type const _GrlFactory._(CountryGrl _) implements CountryGrl {
  const _GrlFactory() : this._(const CountryGrl._());
}
