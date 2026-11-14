import "../iso_locale_mapper.dart";

/// Contains 3 translation(s).
/// Provides translations for the Wolof language
/// locale.
class WoCurrenciesL10N extends IsoLocaleMapper<String> {
  /// Provides currency translations for the `wo` locale.
  new()
    : super(
        other: {
          "RUB": "Ruble bi Rsis",
          "XCG": "Gildiye Karayib",
          "ZWG": "Zimbabwean ZiG",
        },
      );
}
