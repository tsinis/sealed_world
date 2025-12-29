// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/submodels/world_country.dart";

extension type const _LbnFactory._(CountryLbn _) implements CountryLbn {
  const _LbnFactory() : this._(const CountryLbn._());
}

/// A class that represents the Lebanon country.
class CountryLbn extends WorldCountry {
  /// {@template sealed_world.country_lbn_constructor}
  /// Creates a instance of [CountryLbn] (Lebanon country).
  ///
  /// ISO 3166-1 Alpha-3 code: `LBN`, ISO 3166-1 Alpha-2 code: `LB`.
  /// {@endtemplate}
  const factory CountryLbn() = _LbnFactory;

  const CountryLbn._()
    : super._(
        name: const CountryName(
          language: LangEng(),
          official: "Lebanese Republic",
          common: "Lebanon",
        ),
        tld: const [".lb"],
        code: "LBN",
        codeNumeric: "422",
        codeShort: "LB",
        cioc: "LBN",
        idd: const Idd(root: 9, suffixes: [61]),
        altSpellings: const [
          "LB",
          "Lebanese Republic",
          "Al-Jumhūrīyah Al-Libnānīyah",
        ],
        continent: const Asia(),
        subregion: const WesternAsia(),
        latLng: const LatLng(33.83333333, 35.83333333),
        bordersCodes: const ["Isr", "Syr"],
        areaMetric: 10452,
        emoji: "🇱🇧",
        maps: const Maps(
          googleMaps: "Sz5VCU8UFBqMyTdc9",
          openStreetMaps: "relation/184843",
        ),
        population: 5364482,
        gini: const Gini(year: 2011, coefficient: 31.8),
        fifa: "LBN",
        car: const Car(sign: "RL"),
        timezones: const ["UTC+02:00"],
        postalCode: const PostalCode(
          format: "#### ####|####",
          regExpPattern: r"^(\d{4}(\d{4})?)$",
        ),
      );
  @override
  List<FiatCurrency> get currencies => const [FiatLbp()];
  @override
  CapitalInfo get capitalInfo => const CapitalInfo(
    capital: Capital("Beirut"),
    latLng: LatLng(33.87, 35.5),
  );
  @override
  List<RegionalBloc> get regionalBlocs => const [BlocAL()];
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(language: LangEng(), female: "Lebanese", male: "Lebanese"),
    Demonyms(language: LangFra(), female: "Libanaise", male: "Libanais"),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(
      language: LangAra(),
      official: "الجمهورية اللبنانية",
      common: "لبنان",
    ),
    CountryName(
      language: LangFra(),
      official: "République libanaise",
      common: "Liban",
    ),
  ];
  @override
  List<NaturalLanguage> get languages => const [LangAra(), LangFra()];
}
