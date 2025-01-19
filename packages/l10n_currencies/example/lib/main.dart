// ignore_for_file: avoid_print, it's just an example.

import "package:l10n_currencies/l10n_currencies.dart";

void main() {
  /// Create an instance of the mapper directly.
  final mapper = CurrenciesLocaleMapper();

  /// Define some ISO codes to localize (e.g., `USD` for US Dollar,
  ///`RUB` for Russian Ruble, etc.).
  final isoCodes = {"USD", "RUB", "PLN"};

  /// Localize the codes with an optional main locale (e.g., "sk" for Slovak),
  /// and an optional fallback locale (e.g., "cs" for Czech).
  final localized =
      mapper.localize(isoCodes, mainLocale: "sk", fallbackLocale: "cs");

  print("Names count: ${localized.length}"); // Prints: "Names count: 6".

  /// Print out the localized names.
  localized.forEach(
    (currency, l10n) => print(
      'Localized name of currency with ISO code "${currency.isoCode}" '
      'for locale "${currency.locale}" is "$l10n"',
    ),
  );
}
