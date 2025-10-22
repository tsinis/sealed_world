// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/country.dart";

extension type const _MacFactory._(CountryMac _) implements CountryMac {
  const _MacFactory() : this._(const CountryMac._());
}

/// A class that represents the the Macau country.
class CountryMac extends WorldCountry {
  /// {@template sealed_world.country_mac_constructor}
  /// Creates a instance of [CountryMac] (Macau country).
  ///
  /// ISO 3166-1 Alpha-3 code: `MAC`, ISO 3166-1 Alpha-2 code: `MO`.
  /// {@endtemplate}
  const factory CountryMac() = _MacFactory;

  const CountryMac._()
    : super(
        name: const CountryName(
          language: LangEng(),
          official:
              "Macao Special Administrative Region of the People's Republic of China",
          common: "Macau",
        ),
        tld: const [".mo"],
        code: "MAC",
        codeNumeric: "446",
        codeShort: "MO",
        independent: false,
        unMember: false,
        idd: const Idd(root: 8, suffixes: [53]),
        altSpellings: const [
          "MO",
          "澳门",
          "Macao",
          "Macao Special Administrative Region of the People's Republic of China",
          "中華人民共和國澳門特別行政區",
          "Região Administrativa Especial de Macau da República Popular da China",
        ],
        continent: const Asia(),
        subregion: const EasternAsia(),
        latLng: const LatLng(22.16666666, 113.55),
        bordersCodes: const ["Chn"],
        areaMetric: 30,
        emoji: "🇲🇴",
        maps: const Maps(
          googleMaps: "whymRdk3dZFfAAs4A",
          openStreetMaps: "relation/1867188",
        ),
        population: 712651,
        fifa: "MAC",
        car: const Car(sign: "MO", isRightSide: false),
        timezones: const ["UTC+08:00"],
      );
  @override
  List<FiatCurrency> get currencies => const [FiatMop()];
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(language: LangEng(), female: "Macanese", male: "Macanese"),
    Demonyms(language: LangFra(), female: "Macanaise", male: "Macanais"),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(
      language: LangPor(),
      official:
          "Região Administrativa Especial de Macau da República Popular da China",
      common: "Macau",
    ),
    CountryName(language: LangZho(), official: "中华人民共和国澳门特别行政区", common: "澳门"),
  ];
  @override
  List<NaturalLanguage> get languages => const [LangPor(), LangZho()];
}
