// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/country.dart";

/// A class that represents the the Myanmar country.
class CountryMmr extends WorldCountry {
  /// {@template sealed_world.countries_mmr_constructor}}
  /// Creates a instance of [CountryMmr] (Myanmar country).
  ///
  /// ISO 3166-1 Alpha-3 code: `MMR`, ISO 3166-1 Alpha-2 code: `MM`.
  /// {@endtemplate}
  const factory CountryMmr() = _MmrFactory;

  const CountryMmr._()
    : super(
        name: const CountryName(
          language: LangEng(),
          official: "Republic of the Union of Myanmar",
          common: "Myanmar",
        ),
        tld: const [".mm"],
        code: "MMR",
        codeNumeric: "104",
        codeShort: "MM",
        cioc: "MYA",
        idd: const Idd(root: 9, suffixes: [5]),
        altSpellings: const [
          "MM",
          "Burma",
          "Republic of the Union of Myanmar",
          "Pyidaunzu Thanmăda Myăma Nainngandaw",
        ],
        continent: const Asia(),
        subregion: const SouthEasternAsia(),
        latLng: const LatLng(22, 96),
        bordersCodes: const ["Bgd", "Chn", "Ind", "Lao", "Tha"],
        areaMetric: 676578,
        emoji: "🇲🇲",
        maps: const Maps(
          googleMaps: "4jrZyJkDERUfHyp26",
          openStreetMaps: "relation/50371",
        ),
        population: 55770232,
        gini: const Gini(year: 2017, coefficient: 30.7),
        fifa: "MYA",
        car: const Car(sign: "BUR"),
        timezones: const ["UTC+06:30"],
        postalCode: const PostalCode(),
      );
  @override
  List<FiatCurrency> get currencies => const [FiatMmk()];
  @override
  CapitalInfo get capitalInfo => const CapitalInfo(
    capital: Capital("Naypyidaw"),
    latLng: LatLng(19.76, 96.07),
  );
  @override
  List<RegionalBloc> get regionalBlocs => const [BlocASEAN()];
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(language: LangEng(), female: "Burmese", male: "Burmese"),
    Demonyms(language: LangFra(), female: "Birmane", male: "Birman"),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(
      language: LangMya(),
      official: "ပြည်ထောင်စု သမ္မတ မြန်မာနိုင်ငံတော်",
      common: "မြန်မာ",
    ),
  ];
  @override
  List<NaturalLanguage> get languages => const [LangMya()];
}

extension type const _MmrFactory._(CountryMmr _) implements CountryMmr {
  const _MmrFactory() : this._(const CountryMmr._());
}
