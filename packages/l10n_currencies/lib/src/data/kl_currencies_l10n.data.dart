import "../iso_locale_mapper.dart";

/// Contains 2 translation(s).
/// Provides translations for the Kalaallisut (Greenlandic) language
/// locale.
class KlCurrenciesL10N extends IsoLocaleMapper<String> {
  /// Provides currency translations for the `kl` locale.
  KlCurrenciesL10N() {
    map.addAll({"DKK": "DKK", "EUR": "euro"});
  }
}
