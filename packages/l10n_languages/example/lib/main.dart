// ignore_for_file: avoid_print, it's just an example.
import "package:l10n_languages/l10n_languages.dart";

void main(List<String> args) {
  final mainLocale = args.firstOrNull ?? "fr";

  /// Provide a custom locale with a new language code (SCO -> Scots language).
  final mapper = LanguagesLocaleMapper(
    other: {
      /// Register the custom L10N under an arbitrary locale key (if needed).
      "en_US": IsoLocaleMapper(other: {"SCO": "The Scots language"}),
    },
  );

  final localized = mapper.localize(
    const {"ENG", "POL", "SCO"}, // Language codes: English, Polish, Scots.
    mainLocale: mainLocale, // Aim to get specific L10N for language names 1st.
    fallbackLocale: "en_US", // Fallback to English if specific L10N is missing.
    formatter:
        (localeKey, l10n) => // Optional formatter, uppercase for English L10N.
            localeKey.locale.startsWith("en") ? l10n.toUpperCase() : l10n,
  );

  print("Names count ${localized.length}"); // 5 - no specific entry for Scots.
  /// Print out the localized names.
  localized.forEach(
    (language, l10n) => print(
      'Localized name of language with code "${language.isoCode}" '
      'for locale "${language.locale}" is "$l10n"',
    ),
  );
}
