// ignore_for_file: avoid_print
import "package:sealed_countries/sealed_countries.dart";

void main() {
  print(WorldCountry.list.length); // Prints: "250".

  final mexico = WorldCountry.fromCode("MEX");
  print(mexico.name.common); // Prints: "Mexico".

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
}
