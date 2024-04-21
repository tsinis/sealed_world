// ignore_for_file: avoid_print, avoid-non-ascii-symbols, prefer-match-file-name
import "package:sealed_countries/sealed_countries.dart";

void main() {
  print(WorldCountry.list.length); // Prints: "250".

  final country = WorldCountry.fromCode("MEX");
  print(country.name.common); // Prints: "Mexico".
  print(country.isMex); // Prints: true.

  final europeanCountries = WorldCountry.list.where(
    (country) => country.continent is Europe,
  );
  print(europeanCountries); // Prints a list of European countries.

  final europeanUnion = RegionalBloc.fromAcronym("EU");
  final europeButNotEU = europeanCountries.where(
    (country) => !(country.regionalBlocs?.contains(europeanUnion) ?? false),
  );

  print(europeButNotEU.length); // Prints 23 count of non-EU European countries.

  /// Prints all the countries in the world with their phone code.
  for (final country in WorldCountry.list) {
    print(
      "${country.name.common} code: ${country.idd.phoneCode()}",
    );
  }

  for (final country in WorldCountry.list) {
    print(
      """${country.internationalName} translated to Slovak language: ${country.translation(const BasicLocale(LangSlk())).name}""",
    );
  }

  print(const _CountryCustom().name.common); // Prints "Custom".
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
}
