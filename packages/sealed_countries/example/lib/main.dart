// ignore_for_file: avoid_print, avoid-non-ascii-symbols, prefer-match-file-name
import "package:l10n_countries/l10n_countries.dart";
import "package:sealed_countries/sealed_countries.dart";

void main() {
  print(WorldCountry.list.length); // Prints: "250".

  final country = WorldCountry.fromCode("MEX");
  print(country.name.common); // Prints: "Mexico".
  print(country.isMex); // Prints: true.

  final europeanCountries = WorldCountry.list.where(
    (cnt) => cnt.continent is Europe,
  );
  print(europeanCountries); // Prints a list of European countries.

  final europeanUnion = RegionalBloc.fromAcronym("EU");
  final europeButNotEU = europeanCountries.where(
    (cnt) => !(cnt.regionalBlocs?.contains(europeanUnion) ?? false),
  );

  print(europeButNotEU.length); // Prints 23 count of non-EU European countries.

  /// Prints all the countries in the world with their phone code.
  for (final cnt in WorldCountry.list) {
    print("${cnt.name.common} code: ${cnt.idd.phoneCode()}");
  }

  /// Translations:
  // Prints German translations of all available regular currencies.
  final germanNames = WorldCountry.list.commonNamesMap(
    options: const LocaleMappingOptions(
      mainLocale: BasicTypedLocale(LangDeu()),
    ),
  );

  print(
    """Fully translated to German: ${germanNames.length == WorldCountry.list.length}""",
  ); // Prints: "Fully translated to German: true".
  for (final deuTranslation in germanNames.entries) {
    print("German name of ${deuTranslation.key.name}: ${deuTranslation.value}");
  }

  const customCountry = _CountryCustom();

  print(customCountry.name.common); // Prints "Unknown".
  print(
    customCountry.maybeCommonNameFor(const BasicTypedLocale(LangEng())),
  ); // Prints "Unknown country".
}

/// Creates a instance of the custom country with permissive constructor.
class _CountryCustom extends WorldCountry {
  const _CountryCustom()
    : super.permissive(
        name: const CountryName(
          language: LangEng(),
          official: "Unknown",
          common: "Unknown",
        ),
        code: "UNK",
      );

  @override
  TypedLocalizationDelegate get l10n => super.l10n.copyWith(
    mapper: () => CountriesLocaleMapper(
      other: {
        /// From the `l10n_countries` package.
        "en": IsoLocaleMapper(
          other: {code: "Unknown country", "$code+": "Unknown rich name"},
        ),
      },
    ).localize,
  );
}
