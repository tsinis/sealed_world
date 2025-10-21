// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/country.dart";

/// A class that represents the the Guiana country.
class CountryGuf extends WorldCountry {
  /// {@template sealed_world.countries_guf_constructor}}
  /// Creates a instance of [CountryGuf] (Guiana country).
  ///
  /// ISO 3166-1 Alpha-3 code: `GUF`, ISO 3166-1 Alpha-2 code: `GF`.
  /// {@endtemplate}
  const factory CountryGuf() = _GufFactory;

  const CountryGuf._()
    : super(
        name: const CountryName(
          language: LangEng(),
          official: "French Guiana",
          common: "Guiana",
        ),
        tld: const [".gf"],
        code: "GUF",
        codeNumeric: "254",
        codeShort: "GF",
        independent: false,
        unMember: false,
        idd: const Idd(root: 5, suffixes: [94]),
        altSpellings: const ["GF", "Guiana", "Guyane"],
        continent: const Americas(),
        subregion: const SouthAmerica(),
        latLng: const LatLng(4, -53),
        bordersCodes: const ["Bra", "Sur"],
        areaMetric: 83534,
        emoji: "🇬🇫",
        maps: const Maps(
          googleMaps: "NJawFwMzG7YtCrVP7",
          openStreetMaps: "relation/2502058",
        ),
        population: 292354,
        car: const Car(sign: "F"),
        timezones: const ["UTC-03:00"],
        postalCode: const PostalCode(regExpPattern: r"^((97|98)3\d{2})$"),
      );
  @override
  List<FiatCurrency> get currencies => const [FiatEur()];
  @override
  CapitalInfo get capitalInfo => const CapitalInfo(
    capital: Capital("Cayenne"),
    latLng: LatLng(4.94, -52.33),
  );
  @override
  List<RegionalBloc> get regionalBlocs => const [BlocUSAN()];
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(language: LangEng(), female: "Guianan", male: "Guianan"),
    Demonyms(language: LangFra(), female: "Guyanaise", male: "Guyanais"),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(
      language: LangFra(),
      official: "Guyane",
      common: "Guyane française",
    ),
  ];
  @override
  List<NaturalLanguage> get languages => const [LangFra()];
}

extension type const _GufFactory._(CountryGuf _) implements CountryGuf {
  const _GufFactory() : this._(const CountryGuf._());
}
