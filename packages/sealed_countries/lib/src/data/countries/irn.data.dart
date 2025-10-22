// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/country.dart";

extension type const _IrnFactory._(CountryIrn _) implements CountryIrn {
  const _IrnFactory() : this._(const CountryIrn._());
}

/// A class that represents the the Iran country.
class CountryIrn extends WorldCountry {
  /// {@template sealed_world.country_irn_constructor}
  /// Creates a instance of [CountryIrn] (Iran country).
  ///
  /// ISO 3166-1 Alpha-3 code: `IRN`, ISO 3166-1 Alpha-2 code: `IR`.
  /// {@endtemplate}
  const factory CountryIrn() = _IrnFactory;

  const CountryIrn._()
    : super(
        name: const CountryName(
          language: LangEng(),
          official: "Islamic Republic of Iran",
          common: "Iran",
        ),
        tld: const [".ir", "ایران."],
        code: "IRN",
        codeNumeric: "364",
        codeShort: "IR",
        cioc: "IRI",
        idd: const Idd(root: 9, suffixes: [8]),
        altSpellings: const [
          "IR",
          "Islamic Republic of Iran",
          "Iran, Islamic Republic of",
          "Jomhuri-ye Eslāmi-ye Irān",
        ],
        continent: const Asia(),
        subregion: const SouthernAsia(),
        latLng: const LatLng(32, 53),
        bordersCodes: const ["Afg", "Arm", "Aze", "Irq", "Pak", "Tur", "Tkm"],
        areaMetric: 1648195,
        emoji: "🇮🇷",
        maps: const Maps(
          googleMaps: "dMgEGuacBPGYQnjY7",
          openStreetMaps: "relation/304938",
        ),
        population: 92417681,
        gini: const Gini(year: 2018, coefficient: 42),
        fifa: "IRN",
        car: const Car(sign: "IR"),
        timezones: const ["UTC+03:30"],
        startOfWeek: Weekday.saturday,
        postalCode: const PostalCode(
          format: "##########",
          regExpPattern: r"^(\d{10})$",
        ),
      );
  @override
  List<FiatCurrency> get currencies => const [FiatIrr()];
  @override
  CapitalInfo get capitalInfo => const CapitalInfo(
    capital: Capital("Tehran"),
    latLng: LatLng(35.7, 51.42),
  );
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(language: LangEng(), female: "Iranian", male: "Iranian"),
    Demonyms(language: LangFra(), female: "Iranienne", male: "Iranien"),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(
      language: LangFas(),
      official: "جمهوری اسلامی ایران",
      common: "ایران",
    ),
  ];
  @override
  List<NaturalLanguage> get languages => const [LangFas()];
}
