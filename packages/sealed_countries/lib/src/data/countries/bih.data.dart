// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/country.dart";

extension type const _BihFactory._(CountryBih _) implements CountryBih {
  const _BihFactory() : this._(const CountryBih._());
}

/// A class that represents the the Bosnia and Herzegovina country.
class CountryBih extends WorldCountry {
  /// {@template sealed_world.country_bih_constructor}
  /// Creates a instance of [CountryBih] (Bosnia and Herzegovina country).
  ///
  /// ISO 3166-1 Alpha-3 code: `BIH`, ISO 3166-1 Alpha-2 code: `BA`.
  /// {@endtemplate}
  const factory CountryBih() = _BihFactory;

  const CountryBih._()
    : super(
        name: const CountryName(
          language: LangEng(),
          official: "Bosnia and Herzegovina",
          common: "Bosnia and Herzegovina",
        ),
        tld: const [".ba"],
        code: "BIH",
        codeNumeric: "070",
        codeShort: "BA",
        cioc: "BIH",
        idd: const Idd(root: 3, suffixes: [87]),
        altSpellings: const ["Босна и Херцеговина", "BA", "Bosnia-Herzegovina"],
        continent: const Europe(),
        subregion: const SouthwestEurope(),
        latLng: const LatLng(44, 18),
        bordersCodes: const ["Hrv", "Mne", "Srb"],
        areaMetric: 51209,
        emoji: "🇧🇦",
        maps: const Maps(
          googleMaps:
              "https://www.google.com/maps/place/Bosnia+and+Herzegovina",
          openStreetMaps: "relation/2528142",
        ),
        population: 3280815,
        gini: const Gini(year: 2011, coefficient: 33),
        fifa: "BIH",
        car: const Car(sign: "BIH"),
        timezones: const ["UTC+01:00"],
        postalCode: const PostalCode(),
      );
  @override
  List<FiatCurrency> get currencies => const [FiatBam()];
  @override
  CapitalInfo get capitalInfo => const CapitalInfo(
    capital: Capital("Sarajevo"),
    latLng: LatLng(43.87, 18.42),
  );
  @override
  List<RegionalBloc> get regionalBlocs => const [BlocCEFTA()];
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(
      language: LangEng(),
      female: "Bosnian, Herzegovinian",
      male: "Bosnian, Herzegovinian",
    ),
    Demonyms(language: LangFra(), female: "Bosnienne", male: "Bosnien"),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(
      language: LangBos(),
      official: "Bosna i Hercegovina",
      common: "Bosna i Hercegovina",
    ),
    CountryName(
      language: LangHrv(),
      official: "Bosna i Hercegovina",
      common: "Bosna i Hercegovina",
    ),
    CountryName(
      language: LangSrp(),
      official: "Боснa и Херцеговина",
      common: "Боснa и Херцеговина",
    ),
  ];
  @override
  List<NaturalLanguage> get languages => const [
    LangBos(),
    LangHrv(),
    LangSrp(),
  ];
}
