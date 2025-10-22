// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/country.dart";

extension type const _ArmFactory._(CountryArm _) implements CountryArm {
  const _ArmFactory() : this._(const CountryArm._());
}

/// A class that represents the Armenia country.
class CountryArm extends WorldCountry {
  /// {@template sealed_world.country_arm_constructor}
  /// Creates a instance of [CountryArm] (Armenia country).
  ///
  /// ISO 3166-1 Alpha-3 code: `ARM`, ISO 3166-1 Alpha-2 code: `AM`.
  /// {@endtemplate}
  const factory CountryArm() = _ArmFactory;

  const CountryArm._()
    : super(
        name: const CountryName(
          language: LangEng(),
          official: "Republic of Armenia",
          common: "Armenia",
        ),
        tld: const [".am"],
        code: "ARM",
        codeNumeric: "051",
        codeShort: "AM",
        cioc: "ARM",
        idd: const Idd(root: 3, suffixes: [74]),
        altSpellings: const [
          "AM",
          "Hayastan",
          "Republic of Armenia",
          "Հայաստանի Հանրապետություն",
        ],
        continent: const Asia(),
        subregion: const WesternAsia(),
        latLng: const LatLng(40, 45),
        landlocked: true,
        bordersCodes: const ["Aze", "Geo", "Irn", "Tur"],
        areaMetric: 29743,
        emoji: "🇦🇲",
        maps: const Maps(
          googleMaps: "azWUtK9bUQYEyccbA",
          openStreetMaps: "relation/364066",
        ),
        population: 2963234,
        gini: const Gini(year: 2022, coefficient: 27.9),
        fifa: "ARM",
        car: const Car(sign: "AM"),
        timezones: const ["UTC+04:00"],
        postalCode: const PostalCode(
          format: "######",
          regExpPattern: r"^(\d{6})$",
        ),
      );
  @override
  List<FiatCurrency> get currencies => const [FiatAmd()];
  @override
  CapitalInfo get capitalInfo => const CapitalInfo(
    capital: Capital("Yerevan"),
    latLng: LatLng(40.17, 44.5),
  );
  @override
  List<RegionalBloc> get regionalBlocs => const [BlocEEU()];
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(language: LangEng(), female: "Armenian", male: "Armenian"),
    Demonyms(language: LangFra(), female: "Arménienne", male: "Arménien"),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(
      language: LangHye(),
      official: "Հայաստանի Հանրապետություն",
      common: "Հայաստան",
    ),
  ];
  @override
  List<NaturalLanguage> get languages => const [LangHye()];
}
