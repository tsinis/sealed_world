// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/submodels/world_country.dart";

extension type const _IrlFactory._(CountryIrl _) implements CountryIrl {
  const _IrlFactory() : this._(const CountryIrl._());
}

/// A class that represents the Ireland country.
class CountryIrl extends WorldCountry {
  /// {@template sealed_world.country_irl_constructor}
  /// Creates a instance of [CountryIrl] (Ireland country).
  ///
  /// ISO 3166-1 Alpha-3 code: `IRL`, ISO 3166-1 Alpha-2 code: `IE`.
  /// {@endtemplate}
  const factory CountryIrl() = _IrlFactory;

  const CountryIrl._()
    : super._(
        name: const CountryName(
          language: LangEng(),
          official: "Republic of Ireland",
          common: "Ireland",
        ),
        tld: const [".ie"],
        code: "IRL",
        codeNumeric: "372",
        codeShort: "IE",
        cioc: "IRL",
        idd: const Idd(root: 3, suffixes: [53]),
        altSpellings: const [
          "IE",
          "Éire",
          "Republic of Ireland",
          "Poblacht na hÉireann",
        ],
        continent: const Europe(),
        subregion: const NorthernEurope(),
        latLng: const LatLng(53, -8),
        bordersCodes: const ["Gbr"],
        areaMetric: 70273,
        emoji: "🇮🇪",
        maps: const Maps(
          googleMaps: "hxd1BKxgpchStzQC6",
          openStreetMaps: "relation/62273",
        ),
        population: 7185600,
        gini: const Gini(year: 2017, coefficient: 31.4),
        fifa: "IRL",
        car: const Car(sign: "IRL", isRightSide: false),
        timezones: const ["UTC+00:00"],
        postalCode: const PostalCode(
          format: "#|@#|@#|@#|@#|@#|@#|@",
          regExpPattern:
              r"^(([A-Z]\d{2}[A-Z]{2})|([A-Z]\d{3}[A-Z]{2})|([A-Z]{2}\d{2}[A-Z]{2})|([A-Z]{2}\d{3}[A-Z]{2})|([A-Z]\d[A-Z]\d[A-Z]{2})|([A-Z]{2}\d[A-Z]\d[A-Z]{2})|(GIR0AA))$",
        ),
      );
  @override
  List<FiatCurrency> get currencies => const [FiatEur()];
  @override
  CapitalInfo get capitalInfo => const CapitalInfo(
    capital: Capital("Dublin"),
    latLng: LatLng(53.32, -6.23),
  );
  @override
  List<RegionalBloc> get regionalBlocs => const [BlocEU()];
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(language: LangEng(), female: "Irish", male: "Irish"),
    Demonyms(language: LangFra(), female: "Irlandaise", male: "Irlandais"),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(
      language: LangEng(),
      official: "Republic of Ireland",
      common: "Ireland",
    ),
    CountryName(
      language: LangGle(),
      official: "Poblacht na hÉireann",
      common: "Éire",
    ),
  ];
  @override
  List<NaturalLanguage> get languages => const [LangEng(), LangGle()];
}
