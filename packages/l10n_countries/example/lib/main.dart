// ignore_for_file: avoid_print, it's just an example.

import "package:l10n_countries/l10n_countries.dart";

void main() {
  /// Create an instance of the mapper directly.
  final mapper = CountriesLocaleMapper();

  /// Define some ISO codes to localize (e.g., `USA` for United States,
  /// `RUS` for Russian Federation, and `POL` for Poland).
  final isoCodes = {"USA", "RUS", "POL"};

  /// Localize the codes with an optional main locale (e.g., "sk" for Slovak),
  /// and an optional fallback locale (e.g., "cs" for Czech).
  final localized =
      mapper.localize(isoCodes, mainLocale: "sk", fallbackLocale: "cs");

  print("Names count: ${localized.length}"); // Prints: "Names count: 12".

  /// Print out the localized names.
  localized.forEach(
    (country, l10n) => print(
      'Localized name of country with ISO code "${country.isoCode}" '
      'for locale "${country.locale}" is "$l10n"',
    ),
  );
}
