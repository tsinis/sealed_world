// ignore_for_file: avoid_print
import "package:countries_dart/countries_dart.dart";

void main() {
  final europeanCountries = WorldCountry.list.where(
    (country) => country.continent is Europe,
  );
  print(europeanCountries); // Prints a list of European countries.
}
