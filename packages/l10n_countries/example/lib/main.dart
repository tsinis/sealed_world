// ignore_for_file: avoid_print, it's just an example.
import "package:l10n_countries/l10n_countries.dart";

void main(List<String> args) {
  final mainLocale = args.firstOrNull ?? "fr";

  /// Provide a custom locale with a new language code (SCT -> Scotland).
  final mapper = CountriesLocaleMapper(
    other: {
      /// Register the custom L10N under an arbitrary locale key (if needed).
      "en_US": IsoLocaleMapper(other: {"SCT": "Scotland"}),
    },
  );

  final localized = mapper.localize(
    const {"USA", "POL", "SCT"}, // Country codes: USA, Poland, Scotland.
    mainLocale: mainLocale, // Aim to get specific L10N for country names 1st.
    fallbackLocale: "en_US", // Fallback to English if specific L10N is missing.
    formatter:
        (localeKey, l10n) => // Optional formatter, uppercase for English L10N.
            localeKey.locale.startsWith("en") ? l10n.toUpperCase() : l10n,
  );

  print("Names count ${localized.length}"); // 9 - no main locale entry for SCT.
  /// Print out the localized names.
  localized.forEach(
    (country, l10n) => print(
      'Localized name of country with code "${country.isoCode}" '
      'for locale "${country.locale}" is "$l10n"',
    ),
  );
}
