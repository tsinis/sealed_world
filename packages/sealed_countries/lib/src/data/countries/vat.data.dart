// Those classes are based on data from the restcountries project
// https://gitlab.com/restcountries/restcountries, which is
// licensed under the Mozilla Public License Version 2.0.

// ignore_for_file: prefer-digit-separators

part of "../../model/country/submodels/world_country.dart";

extension type const _VatFactory._(CountryVat _) implements CountryVat {
  const _VatFactory() : this._(const CountryVat._());
}

/// A class that represents the Vatican City country.
class CountryVat extends WorldCountry {
  /// {@template sealed_world.country_vat_constructor}
  /// Creates a instance of [CountryVat] (Vatican City country).
  ///
  /// ISO 3166-1 Alpha-3 code: `VAT`, ISO 3166-1 Alpha-2 code: `VA`.
  /// {@endtemplate}
  const factory CountryVat() = _VatFactory;

  const CountryVat._()
    : super._(
        name: const CountryName(
          language: LangEng(),
          official: "Vatican City State",
          common: "Vatican City",
        ),
        tld: const [".va"],
        code: "VAT",
        codeNumeric: "336",
        codeShort: "VA",
        unMember: false,
        idd: const Idd(root: 3, suffixes: [79]),
        altSpellings: const [
          "VA",
          "Holy See (Vatican City State)",
          "Vatican City State",
          "Stato della Città del Vaticano",
        ],
        continent: const Europe(),
        subregion: const SouthernEurope(),
        latLng: const LatLng(41.9, 12.45),
        landlocked: true,
        bordersCodes: const ["Ita"],
        areaMetric: 0.44,
        emoji: "🇻🇦",
        maps: const Maps(
          googleMaps: "DTKvw5Bd1QZaDZmE8",
          openStreetMaps: "relation/36989",
        ),
        population: 451,
        car: const Car(sign: "V"),
        timezones: const ["UTC+01:00"],
      );
  @override
  List<FiatCurrency> get currencies => const [FiatEur()];
  @override
  CapitalInfo get capitalInfo => const CapitalInfo(
    capital: Capital("Vatican City"),
    latLng: LatLng(41.9, 12.45),
  );
  @override
  List<Demonyms> get demonyms => const [
    Demonyms(language: LangEng(), female: "Vatican", male: "Vatican"),
    Demonyms(language: LangFra(), female: "Vaticane", male: "Vatican"),
  ];
  @override
  List<CountryName> get namesNative => const [
    CountryName(
      language: LangIta(),
      official: "Stato della Città del Vaticano",
      common: "Vaticano",
    ),
    CountryName(
      language: LangLat(),
      official: "Status Civitatis Vaticanæ",
      common: "Vaticanæ",
    ),
  ];
  @override
  List<NaturalLanguage> get languages => const [LangIta(), LangLat()];
}
