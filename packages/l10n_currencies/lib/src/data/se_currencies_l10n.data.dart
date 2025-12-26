import "../iso_locale_mapper.dart";

/// Contains 9 translation(s).
/// Provides translations for the Northern Sami language
/// locale.
class SeCurrenciesL10N extends IsoLocaleMapper<String> {
  /// Provides currency translations for the `se` locale.
  SeCurrenciesL10N() {
    map.addAll({
      "EUR": "euro",
      "NOK": "norgga kruvdno",
      "SEK": "ruoŧŧa kruvdno",
    });
  }
}
