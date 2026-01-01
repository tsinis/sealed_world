// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/submodels/world_country.dart";

extension type const _LaoFactory._(CountryLao _) implements CountryLao {
  const _LaoFactory() : this._(const CountryLao._());
}

/// A class that represents the Laos country.
class CountryLao extends WorldCountry {
  /// {@template sealed_world.country_lao_constructor}
  /// Creates a instance of [CountryLao] (Laos country).
  ///
  /// ISO 3166-1 Alpha-3 code: `LAO`, ISO 3166-1 Alpha-2 code: `LA`.
  /// {@endtemplate}
  const factory CountryLao() = _LaoFactory;

  const CountryLao._()
    : super._(
        name: const CountryName(
          language: LangEng(),
          official: "Lao People's Democratic Republic",
          common: "Laos",
        ),
        tld: const [".la"],
        code: "LAO",
        codeNumeric: "418",
        codeShort: "LA",
        cioc: "LAO",
        idd: const Idd(root: 8, suffixes: [56]),
        altSpellings: const [
          "LA",
          "Lao",
          "Lao People's Democratic Republic",
          "Sathalanalat Paxathipatai Paxaxon Lao",
        ],
        continent: const Asia(),
        subregion: const SouthEasternAsia(),
        latLng: const LatLng(18, 105),
        landlocked: true,
        bordersCodes: const ["Mmr", "Khm", "Chn", "Tha", "Vnm"],
        areaMetric: 236800,
        emoji: "🇱🇦",
        maps: const Maps(
          googleMaps: "F3asVB7sRKgSnwbE7",
          openStreetMaps: "relation/49903",
        ),
        population: 7953556,
        gini: const Gini(year: 2018, coefficient: 38.8),
        fifa: "LAO",
        car: const Car(sign: "LAO"),
        timezones: const ["UTC+07:00"],
        postalCode: const PostalCode(),
      );
  @override
  List<FiatCurrency> get currencies => const [FiatLak()];
  @override
  CapitalInfo get capitalInfo => const CapitalInfo(
    capital: Capital("Vientiane"),
    latLng: LatLng(17.97, 102.6),
  );
  @override
  List<RegionalBloc> get regionalBlocs => const [BlocASEAN()];
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(language: LangEng(), female: "Laotian", male: "Laotian"),
    Demonyms(language: LangFra(), female: "Laotienne", male: "Laotien"),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(
      language: LangLao(),
      official: "ສາທາລະນະລັດ ປະຊາທິປະໄຕ ປະຊາຊົນລາວ",
      common: "ປະເທດລາວ",
    ),
  ];
  @override
  List<NaturalLanguage> get languages => const [LangLao()];
}
