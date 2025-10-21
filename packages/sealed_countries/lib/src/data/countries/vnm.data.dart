// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/country.dart";

/// A class that represents the the Vietnam country.
class CountryVnm extends WorldCountry {
  /// {@template sealed_world.countries_vnm_constructor}}
  /// Creates a instance of [CountryVnm] (Vietnam country).
  ///
  /// ISO 3166-1 Alpha-3 code: `VNM`, ISO 3166-1 Alpha-2 code: `VN`.
  /// {@endtemplate}
  const factory CountryVnm() = _VnmFactory;

  const CountryVnm._()
    : super(
        name: const CountryName(
          language: LangEng(),
          official: "Socialist Republic of Vietnam",
          common: "Vietnam",
        ),
        tld: const [".vn"],
        code: "VNM",
        codeNumeric: "704",
        codeShort: "VN",
        cioc: "VIE",
        idd: const Idd(root: 8, suffixes: [4]),
        altSpellings: const [
          "VN",
          "Socialist Republic of Vietnam",
          "Cộng hòa Xã hội chủ nghĩa Việt Nam",
          "Viet Nam",
        ],
        continent: const Asia(),
        subregion: const SouthEasternAsia(),
        latLng: const LatLng(16.16666666, 107.83333333),
        bordersCodes: const ["Khm", "Chn", "Lao"],
        areaMetric: 331212,
        emoji: "🇻🇳",
        maps: const Maps(
          googleMaps: "PCpVt9WzdJ9A9nEZ9",
          openStreetMaps: "relation/49915",
        ),
        population: 97338583,
        gini: const Gini(year: 2018, coefficient: 35.7),
        fifa: "VIE",
        car: const Car(sign: "VN"),
        timezones: const ["UTC+07:00"],
        postalCode: const PostalCode(
          format: "######",
          regExpPattern: r"^(\d{6})$",
        ),
      );
  @override
  List<FiatCurrency> get currencies => const [FiatVnd()];
  @override
  CapitalInfo get capitalInfo => const CapitalInfo(
    capital: Capital("Hanoi"),
    latLng: LatLng(21.03, 105.85),
  );
  @override
  List<RegionalBloc> get regionalBlocs => const [BlocASEAN()];
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(language: LangEng(), female: "Vietnamese", male: "Vietnamese"),
    Demonyms(language: LangFra(), female: "Vietnamienne", male: "Vietnamien"),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(
      language: LangVie(),
      official: "Cộng hòa xã hội chủ nghĩa Việt Nam",
      common: "Việt Nam",
    ),
  ];
  @override
  List<NaturalLanguage> get languages => const [LangVie()];
}

extension type const _VnmFactory._(CountryVnm _) implements CountryVnm {
  const _VnmFactory() : this._(const CountryVnm._());
}
