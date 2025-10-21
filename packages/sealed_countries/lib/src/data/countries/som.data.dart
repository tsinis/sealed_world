// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/country.dart";

/// A class that represents the the Somalia country.
class CountrySom extends WorldCountry {
  /// {@template sealed_world.countries_som_constructor}}
  /// Creates a instance of [CountrySom] (Somalia country).
  ///
  /// ISO 3166-1 Alpha-3 code: `SOM`, ISO 3166-1 Alpha-2 code: `SO`.
  /// {@endtemplate}
  const factory CountrySom() = _SomFactory;

  const CountrySom._()
    : super(
        name: const CountryName(
          language: LangEng(),
          official: "Federal Republic of Somalia",
          common: "Somalia",
        ),
        tld: const [".so"],
        code: "SOM",
        codeNumeric: "706",
        codeShort: "SO",
        cioc: "SOM",
        idd: const Idd(root: 2, suffixes: [52]),
        altSpellings: const [
          "SO",
          "aṣ-Ṣūmāl",
          "Federal Republic of Somalia",
          "Jamhuuriyadda Federaalka Soomaaliya",
          "Jumhūriyyat aṣ-Ṣūmāl al-Fiderāliyya",
        ],
        continent: const Africa(),
        subregion: const EasternAfrica(),
        latLng: const LatLng(10, 49),
        bordersCodes: const ["Dji", "Eth", "Ken"],
        areaMetric: 637657,
        emoji: "🇸🇴",
        maps: const Maps(
          googleMaps: "8of8q7D1a8p7R6Fc9",
          openStreetMaps: "relation/192799",
        ),
        population: 15893219,
        gini: const Gini(year: 2017, coefficient: 36.8),
        fifa: "SOM",
        car: const Car(sign: "SO"),
        timezones: const ["UTC+03:00"],
        postalCode: const PostalCode(
          format: "@@  #####",
          regExpPattern: r"^([A-Z]{2}\d{5})$",
        ),
      );
  @override
  List<FiatCurrency> get currencies => const [FiatSos()];
  @override
  CapitalInfo get capitalInfo => const CapitalInfo(
    capital: Capital("Mogadishu"),
    latLng: LatLng(2.07, 45.33),
  );
  @override
  List<RegionalBloc> get regionalBlocs => const [BlocAU(), BlocAL()];
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(language: LangEng(), female: "Somali", male: "Somali"),
    Demonyms(language: LangFra(), female: "Somalienne", male: "Somalien"),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(
      language: LangAra(),
      official: "جمهورية الصومال‎‎",
      common: "الصومال‎‎",
    ),
    CountryName(
      language: LangSom(),
      official: "Jamhuuriyadda Federaalka Soomaaliya",
      common: "Soomaaliya",
    ),
  ];
  @override
  List<NaturalLanguage> get languages => const [LangAra(), LangSom()];
}

extension type const _SomFactory._(CountrySom _) implements CountrySom {
  const _SomFactory() : this._(const CountrySom._());
}
