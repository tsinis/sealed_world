// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/country.dart";

extension type const _TunFactory._(CountryTun _) implements CountryTun {
  const _TunFactory() : this._(const CountryTun._());
}

/// A class that represents the Tunisia country.
class CountryTun extends WorldCountry {
  /// {@template sealed_world.country_tun_constructor}
  /// Creates a instance of [CountryTun] (Tunisia country).
  ///
  /// ISO 3166-1 Alpha-3 code: `TUN`, ISO 3166-1 Alpha-2 code: `TN`.
  /// {@endtemplate}
  const factory CountryTun() = _TunFactory;

  const CountryTun._()
    : super(
        name: const CountryName(
          language: LangEng(),
          official: "Tunisian Republic",
          common: "Tunisia",
        ),
        tld: const [".tn"],
        code: "TUN",
        codeNumeric: "788",
        codeShort: "TN",
        cioc: "TUN",
        idd: const Idd(root: 2, suffixes: [16]),
        altSpellings: const [
          "TN",
          "Republic of Tunisia",
          "al-Jumhūriyyah at-Tūnisiyyah",
        ],
        continent: const Africa(),
        subregion: const NorthernAfrica(),
        latLng: const LatLng(34, 9),
        bordersCodes: const ["Dza", "Lby"],
        areaMetric: 163610,
        emoji: "🇹🇳",
        maps: const Maps(
          googleMaps: "KgUmpZdUuNRaougs8",
          openStreetMaps: "relation/192757",
        ),
        population: 11818618,
        gini: const Gini(year: 2015, coefficient: 32.8),
        fifa: "TUN",
        car: const Car(sign: "TN"),
        timezones: const ["UTC+01:00"],
        postalCode: const PostalCode(
          format: "####",
          regExpPattern: r"^(\d{4})$",
        ),
      );
  @override
  List<FiatCurrency> get currencies => const [FiatTnd()];
  @override
  CapitalInfo get capitalInfo =>
      const CapitalInfo(capital: Capital("Tunis"), latLng: LatLng(36.8, 10.18));
  @override
  List<RegionalBloc> get regionalBlocs => const [BlocAU(), BlocAL()];
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(language: LangEng(), female: "Tunisian", male: "Tunisian"),
    Demonyms(language: LangFra(), female: "Tunisienne", male: "Tunisien"),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(
      language: LangAra(),
      official: "الجمهورية التونسية",
      common: "تونس",
    ),
  ];
  @override
  List<NaturalLanguage> get languages => const [LangAra()];
}
