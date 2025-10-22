// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/country.dart";

extension type const _BtnFactory._(CountryBtn _) implements CountryBtn {
  const _BtnFactory() : this._(const CountryBtn._());
}

/// A class that represents the Bhutan country.
class CountryBtn extends WorldCountry {
  /// {@template sealed_world.country_btn_constructor}
  /// Creates a instance of [CountryBtn] (Bhutan country).
  ///
  /// ISO 3166-1 Alpha-3 code: `BTN`, ISO 3166-1 Alpha-2 code: `BT`.
  /// {@endtemplate}
  const factory CountryBtn() = _BtnFactory;

  const CountryBtn._()
    : super(
        name: const CountryName(
          language: LangEng(),
          official: "Kingdom of Bhutan",
          common: "Bhutan",
        ),
        tld: const [".bt"],
        code: "BTN",
        codeNumeric: "064",
        codeShort: "BT",
        cioc: "BHU",
        idd: const Idd(root: 9, suffixes: [75]),
        altSpellings: const ["BT", "Kingdom of Bhutan"],
        continent: const Asia(),
        subregion: const SouthernAsia(),
        latLng: const LatLng(27.5, 90.5),
        landlocked: true,
        bordersCodes: const ["Chn", "Ind"],
        areaMetric: 38394,
        emoji: "🇧🇹",
        maps: const Maps(
          googleMaps: "VEfXXBftTFLUpNgp8",
          openStreetMaps: "relation/184629",
        ),
        population: 771612,
        gini: const Gini(year: 2017, coefficient: 37.4),
        fifa: "BHU",
        car: const Car(sign: "BHT", isRightSide: false),
        timezones: const ["UTC+06:00"],
      );
  @override
  List<FiatCurrency> get currencies => const [FiatBtn(), FiatInr()];
  @override
  CapitalInfo get capitalInfo => const CapitalInfo(
    capital: Capital("Thimphu"),
    latLng: LatLng(27.47, 89.63),
  );
  @override
  List<RegionalBloc> get regionalBlocs => const [BlocSAARC()];
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(language: LangEng(), female: "Bhutanese", male: "Bhutanese"),
    Demonyms(language: LangFra(), female: "Bhoutanaise", male: "Bhoutanais"),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(
      language: LangDzo(),
      official: "འབྲུག་རྒྱལ་ཁབ་",
      common: "འབྲུག་ཡུལ་",
    ),
  ];
  @override
  List<NaturalLanguage> get languages => const [LangDzo()];
}
