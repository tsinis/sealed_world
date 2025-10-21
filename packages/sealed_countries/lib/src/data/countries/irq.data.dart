// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/country.dart";

/// A class that represents the the Iraq country.
class CountryIrq extends WorldCountry {
  /// {@template sealed_world.countries_irq_constructor}}
  /// Creates a instance of [CountryIrq] (Iraq country).
  ///
  /// ISO 3166-1 Alpha-3 code: `IRQ`, ISO 3166-1 Alpha-2 code: `IQ`.
  /// {@endtemplate}
  const factory CountryIrq() = _IrqFactory;

  const CountryIrq._()
    : super(
        name: const CountryName(
          language: LangEng(),
          official: "Republic of Iraq",
          common: "Iraq",
        ),
        tld: const [".iq"],
        code: "IRQ",
        codeNumeric: "368",
        codeShort: "IQ",
        cioc: "IRQ",
        idd: const Idd(root: 9, suffixes: [64]),
        altSpellings: const ["IQ", "Republic of Iraq", "Jumhūriyyat al-‘Irāq"],
        continent: const Asia(),
        subregion: const WesternAsia(),
        latLng: const LatLng(33, 44),
        bordersCodes: const ["Irn", "Jor", "Kwt", "Sau", "Syr", "Tur"],
        areaMetric: 438317,
        emoji: "🇮🇶",
        maps: const Maps(
          googleMaps: "iL8Bmy1sUCW9fUk18",
          openStreetMaps: "relation/304934",
        ),
        population: 46118793,
        gini: const Gini(year: 2012, coefficient: 29.5),
        fifa: "IRQ",
        car: const Car(sign: "IRQ"),
        timezones: const ["UTC+03:00"],
        startOfWeek: Weekday.sunday,
        postalCode: const PostalCode(),
      );
  @override
  List<FiatCurrency> get currencies => const [FiatIqd()];
  @override
  CapitalInfo get capitalInfo => const CapitalInfo(
    capital: Capital("Baghdad"),
    latLng: LatLng(33.33, 44.4),
  );
  @override
  List<RegionalBloc> get regionalBlocs => const [BlocAL()];
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(language: LangEng(), female: "Iraqi", male: "Iraqi"),
    Demonyms(language: LangFra(), female: "Irakienne", male: "Irakien"),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(
      language: LangAra(),
      official: "جمهورية العراق",
      common: "العراق",
    ),
  ];
  @override
  List<NaturalLanguage> get languages => const [LangAra(), LangKur()];
}

extension type const _IrqFactory._(CountryIrq _) implements CountryIrq {
  const _IrqFactory() : this._(const CountryIrq._());
}
