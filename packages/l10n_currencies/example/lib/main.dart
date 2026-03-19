// ignore_for_file: avoid_print, it's just an example.
import "package:l10n_currencies/l10n_currencies.dart";

void main(List<String> args) {
  final mainLocale = args.firstOrNull ?? "fr";

  /// Provide a custom locale with a new language code (SCP -> Scottish Pound).
  final mapper = CurrenciesLocaleMapper(
    other: {
      /// Register the custom L10N under an arbitrary locale key (if needed).
      "en_US": IsoLocaleMapper(other: {"SCP": "Scottish Pound"}),
    },
  );

  final localized = mapper.localize(
    const {"USD", "PLN", "SCP"}, // Currency codes: US $, Zloty, Scottish Pound.
    mainLocale: mainLocale, // Aim to get specific L10N for currency names 1st.
    fallbackLocale: "en_US", // Fallback to English if specific L10N is missing.
    formatter:
        (localeKey, l10n) => // Optional formatter, uppercase for English L10N.
            localeKey.locale.startsWith("en") ? l10n.toUpperCase() : l10n,
  );

  print("Names count ${localized.length}"); // 5 - no specific entry for SCP.
  /// Print out the localized names.
  localized.forEach(
    (currency, l10n) => print(
      'Localized name of currency with code "${currency.isoCode}" '
      'for locale "${currency.locale}" is "$l10n"',
    ),
  );
}
