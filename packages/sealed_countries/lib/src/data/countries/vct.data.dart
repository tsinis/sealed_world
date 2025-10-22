// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/country.dart";

extension type const _VctFactory._(CountryVct _) implements CountryVct {
  const _VctFactory() : this._(const CountryVct._());
}

/// A class that represents the the Saint Vincent and the Grenadines country.
class CountryVct extends WorldCountry {
  /// {@template sealed_world.country_vct_constructor}
  /// Creates a instance of [CountryVct] (Saint Vincent and the Grenadines country).
  ///
  /// ISO 3166-1 Alpha-3 code: `VCT`, ISO 3166-1 Alpha-2 code: `VC`.
  /// {@endtemplate}
  const factory CountryVct() = _VctFactory;

  const CountryVct._()
    : super(
        name: const CountryName(
          language: LangEng(),
          official: "Saint Vincent and the Grenadines",
          common: "Saint Vincent and the Grenadines",
        ),
        tld: const [".vc"],
        code: "VCT",
        codeNumeric: "670",
        codeShort: "VC",
        cioc: "VIN",
        idd: const Idd(root: 1, suffixes: [784]),
        altSpellings: const ["VC"],
        continent: const Americas(),
        subregion: const Caribbean(),
        latLng: const LatLng(13.25, -61.2),
        areaMetric: 389,
        emoji: "🇻🇨",
        maps: const Maps(
          googleMaps: "wMbnMqjG37FMnrwf7",
          openStreetMaps: "relation/550725",
        ),
        population: 110947,
        fifa: "VIN",
        car: const Car(sign: "WV", isRightSide: false),
        timezones: const ["UTC-04:00"],
      );
  @override
  List<FiatCurrency> get currencies => const [FiatXcd()];
  @override
  CapitalInfo get capitalInfo => const CapitalInfo(
    capital: Capital("Kingstown"),
    latLng: LatLng(13.13, -61.22),
  );
  @override
  List<RegionalBloc> get regionalBlocs => const [BlocCARICOM()];
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(
      language: LangEng(),
      female: "Saint Vincentian",
      male: "Saint Vincentian",
    ),
    Demonyms(language: LangFra(), female: "Vincentaise", male: "Vincentais"),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(
      language: LangEng(),
      official: "Saint Vincent and the Grenadines",
      common: "Saint Vincent and the Grenadines",
    ),
  ];
  @override
  List<NaturalLanguage> get languages => const [LangEng()];
}
