import "../iso_locale_mapper.dart";

/// Contains 5 translation(s).
/// Provides translations for the Northern Sami language
/// locale.
class SeCurrenciesL10N extends IsoLocaleMapper<String> {
  /// Provides currency translations for the `se` locale.
  new()
    : super(
        other: {
          "EUR": "Euro",
          "NOK": "Norgga kruvdno",
          "SEK": "Ruoŧŧa kruvdno",
          "XAG": "Uns silba",
          "XAU": "Uns golli",
        },
      );
}
