// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/country.dart";

extension type const _BrnFactory._(CountryBrn _) implements CountryBrn {
  const _BrnFactory() : this._(const CountryBrn._());
}

/// A class that represents the the Brunei country.
class CountryBrn extends WorldCountry {
  /// {@template sealed_world.country_brn_constructor}
  /// Creates a instance of [CountryBrn] (Brunei country).
  ///
  /// ISO 3166-1 Alpha-3 code: `BRN`, ISO 3166-1 Alpha-2 code: `BN`.
  /// {@endtemplate}
  const factory CountryBrn() = _BrnFactory;

  const CountryBrn._()
    : super(
        name: const CountryName(
          language: LangEng(),
          official: "Nation of Brunei, Abode of Peace",
          common: "Brunei",
        ),
        tld: const [".bn"],
        code: "BRN",
        codeNumeric: "096",
        codeShort: "BN",
        cioc: "BRU",
        idd: const Idd(root: 6, suffixes: [73]),
        altSpellings: const [
          "BN",
          "Brunei Darussalam",
          "Nation of Brunei",
          "the Abode of Peace",
        ],
        continent: const Asia(),
        subregion: const SouthEasternAsia(),
        latLng: const LatLng(4.5, 114.66666666),
        bordersCodes: const ["Mys"],
        areaMetric: 5765,
        emoji: "🇧🇳",
        maps: const Maps(
          googleMaps: "4jb4CqBXhr8vNh579",
          openStreetMaps: "relation/2103120",
        ),
        population: 417256,
        fifa: "BRU",
        car: const Car(sign: "BRU", isRightSide: false),
        timezones: const ["UTC+08:00"],
        postalCode: const PostalCode(
          format: "@@####",
          regExpPattern: r"^([A-Z]{2}\d{4})$",
        ),
      );
  @override
  List<FiatCurrency> get currencies => const [FiatBnd(), FiatSgd()];
  @override
  CapitalInfo get capitalInfo => const CapitalInfo(
    capital: Capital("Bandar Seri Begawan"),
    latLng: LatLng(4.88, 114.93),
  );
  @override
  List<RegionalBloc> get regionalBlocs => const [BlocASEAN()];
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(language: LangEng(), female: "Bruneian", male: "Bruneian"),
    Demonyms(language: LangFra(), female: "Brunéienne", male: "Brunéien"),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(
      language: LangMsa(),
      official: "Negara Brunei Darussalam",
      common: "Negara Brunei Darussalam",
    ),
  ];
  @override
  List<NaturalLanguage> get languages => const [LangMsa()];
}
