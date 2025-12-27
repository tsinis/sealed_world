import "../iso_locale_mapper.dart";

/// Contains 2 translation(s).
/// Provides translations for the Tonga (Tonga Islands) language
/// locale.
class ToCurrenciesL10N extends IsoLocaleMapper<String> {
  /// Provides currency translations for the `to` locale.
  ToCurrenciesL10N() {
    map.addAll({"TOP": "Paʻanga fakatonga", "WST": "Tala fakahaʻamoa"});
  }
}
