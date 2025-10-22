// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/country.dart";

extension type const _SmrFactory._(CountrySmr _) implements CountrySmr {
  const _SmrFactory() : this._(const CountrySmr._());
}

/// A class that represents the the San Marino country.
class CountrySmr extends WorldCountry {
  /// {@template sealed_world.country_smr_constructor}
  /// Creates a instance of [CountrySmr] (San Marino country).
  ///
  /// ISO 3166-1 Alpha-3 code: `SMR`, ISO 3166-1 Alpha-2 code: `SM`.
  /// {@endtemplate}
  const factory CountrySmr() = _SmrFactory;

  const CountrySmr._()
    : super(
        name: const CountryName(
          language: LangEng(),
          official: "Republic of San Marino",
          common: "San Marino",
        ),
        tld: const [".sm"],
        code: "SMR",
        codeNumeric: "674",
        codeShort: "SM",
        cioc: "SMR",
        idd: const Idd(root: 3, suffixes: [78]),
        altSpellings: const [
          "SM",
          "Republic of San Marino",
          "Repubblica di San Marino",
        ],
        continent: const Europe(),
        subregion: const SouthernEurope(),
        latLng: const LatLng(43.76666666, 12.41666666),
        landlocked: true,
        bordersCodes: const ["Ita"],
        areaMetric: 61,
        emoji: "🇸🇲",
        maps: const Maps(
          googleMaps: "rxCVJjm8dVY93RPY8",
          openStreetMaps: "relation/54624",
        ),
        population: 33938,
        fifa: "SMR",
        car: const Car(sign: "RSM"),
        timezones: const ["UTC+01:00"],
        postalCode: const PostalCode(
          format: "4789#",
          regExpPattern: r"^(4789\d)$",
        ),
      );
  @override
  List<FiatCurrency> get currencies => const [FiatEur()];
  @override
  CapitalInfo get capitalInfo => const CapitalInfo(
    capital: Capital("City of San Marino"),
    latLng: LatLng(43.94, 12.45),
  );
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(language: LangEng(), female: "Sammarinese", male: "Sammarinese"),
    Demonyms(
      language: LangFra(),
      female: "Saint-Marinaise",
      male: "Saint-Marinais",
    ),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(
      language: LangIta(),
      official: "Repubblica di San Marino",
      common: "San Marino",
    ),
  ];
  @override
  List<NaturalLanguage> get languages => const [LangIta()];
}
