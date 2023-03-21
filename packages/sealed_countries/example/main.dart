// ignore_for_file: avoid_print
import "package:sealed_countries/sealed_countries.dart";

void main() {
  final europeanCountries = WorldCountry.list.where(
    (country) => country.continent is Europe,
  );
  print(europeanCountries); // Prints a list of European countries.

  /// Prints all the countries in the world with their phone code.
  for (final country in WorldCountry.list) {
    print(
      "${country.nameEnglish.common} code: ${country.idd.phoneCode()}",
    );
  }
}
