// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/country.dart";

extension type const _GrcFactory._(CountryGrc _) implements CountryGrc {
  const _GrcFactory() : this._(const CountryGrc._());
}

/// A class that represents the the Greece country.
class CountryGrc extends WorldCountry {
  /// {@template sealed_world.country_grc_constructor}
  /// Creates a instance of [CountryGrc] (Greece country).
  ///
  /// ISO 3166-1 Alpha-3 code: `GRC`, ISO 3166-1 Alpha-2 code: `GR`.
  /// {@endtemplate}
  const factory CountryGrc() = _GrcFactory;

  const CountryGrc._()
    : super(
        name: const CountryName(
          language: LangEng(),
          official: "Hellenic Republic",
          common: "Greece",
        ),
        tld: const [".gr"],
        code: "GRC",
        codeNumeric: "300",
        codeShort: "GR",
        cioc: "GRE",
        idd: const Idd(root: 3, suffixes: [0]),
        altSpellings: const [
          "GR",
          "Elláda",
          "Hellenic Republic",
          "Ελληνική Δημοκρατία",
        ],
        continent: const Europe(),
        subregion: const SouthernEurope(),
        latLng: const LatLng(39, 22),
        bordersCodes: const ["Alb", "Bgr", "Tur", "Mkd"],
        areaMetric: 131990,
        emoji: "🇬🇷",
        maps: const Maps(
          googleMaps: "LHGcAvuRyD2iKECC6",
          openStreetMaps: "relation/192307",
        ),
        population: 10400720,
        gini: const Gini(year: 2024, coefficient: 31.8),
        fifa: "GRE",
        car: const Car(sign: "GR"),
        timezones: const ["UTC+02:00"],
        postalCode: const PostalCode(format: "### ##"),
      );
  @override
  List<FiatCurrency> get currencies => const [FiatEur()];
  @override
  CapitalInfo get capitalInfo => const CapitalInfo(
    capital: Capital("Athens"),
    latLng: LatLng(37.98, 23.73),
  );
  @override
  List<RegionalBloc> get regionalBlocs => const [BlocEU()];
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(language: LangEng(), female: "Greek", male: "Greek"),
    Demonyms(language: LangFra(), female: "Grecque", male: "Grec"),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(
      language: LangEll(),
      official: "Ελληνική Δημοκρατία",
      common: "Ελλάδα",
    ),
  ];
  @override
  List<NaturalLanguage> get languages => const [LangEll()];
}
