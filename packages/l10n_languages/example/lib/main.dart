// ignore_for_file: avoid_print, it's just an example.

import "package:l10n_languages/l10n_languages.dart";

void main() {
  /// Create an instance of the mapper directly.
  final mapper = LanguagesLocaleMapper();

  /// Define some ISO codes to localize (e.g., `ENG` for English,
  ///`RUS` for Russian, etc.).
  final isoCodes = {"ENG", "RUS", "POL"};

  /// Localize the codes with an optional main locale (e.g., "sk" for Slovak),
  /// and an optional fallback locale (e.g., "cs" for Czech).
  final localized =
      mapper.localize(isoCodes, mainLocale: "sk", fallbackLocale: "cs");

  print("Total names count: ${localized.length}");

  /// Print out the localized names.
  localized.forEach(
    (language, l10n) => print(
      'Localized name of language with ISO code "${language.isoCode}" '
      'for locale "${language.locale}" is "$l10n"',
    ),
  );
}
