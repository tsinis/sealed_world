import "package:sealed_countries/sealed_countries.dart";

void main() {
  print(WorldCountry.list.length); // Prints: "250".

  final country = WorldCountry.fromCode("MEX");
  print(country.name.common); // Prints: "Mexico".
  print(country == const CountryMex()); // Prints: true.

  final europeanCountries = WorldCountry.list.where(
    (cnt) => cnt.continent is Europe,
  );
  print(europeanCountries); // Prints a list of European countries.

  final europeanUnion = RegionalBloc.fromAcronym("EU");
  final europeButNotEU = europeanCountries.where(
    (cnt) => !(cnt.regionalBlocs?.contains(europeanUnion) ?? false),
  );

  print(europeButNotEU.length); // Prints 23 count of non-EU European countries.

  const customOne = CountryCustom(code: "XKX", continent: const Asia());
  print(describeCountry(const CountryUsa())); // Prints: "United States".
  print(describeCountry(customOne)); // Prints: "Custom territory XKX".
  print(describeCountry(country)); // Prints: "Standard catalog entry".

  /// Prints all the countries in the world with their phone code.
  for (final cnt in WorldCountry.list) {
    print("${cnt.name.common} code: ${cnt.idd.phoneCode()}");
  }

  /// Translations:
  // Prints German translations of all available regular countries.
  final germanNames = WorldCountry.list.commonNamesMap(
    options: const LocaleMappingOptions(mainLocale: BasicTypedLocale(.deu())),
  );

  print(
    """Fully translated to German: ${germanNames.length == WorldCountry.list.length}""",
  ); // Prints: "Fully translated to German: true".
  for (final deuTranslation in germanNames.entries) {
    print("German name of ${deuTranslation.key.name}: ${deuTranslation.value}");
  }
}

// ignore: prefer-static-class, just an example.
String describeCountry(WorldCountry country) => switch (country) {
  CountryUsa() => country.name.common,
  CountryCustom(:final code) when code.startsWith("X") =>
    "Custom territory $code",
  WorldCountry(:final continent) when continent is Oceania =>
    "Oceania catalog entry",
  // ignore: avoid-wildcard-cases-with-sealed-classes, just an example.
  _ => "Standard catalog entry",
};
