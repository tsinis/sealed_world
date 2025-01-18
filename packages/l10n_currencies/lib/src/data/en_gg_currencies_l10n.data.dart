// ignore_for_file: avoid-unnecessary-collections
import "../iso_locale_mapper.dart";

/// Contains 1 translation(s).
/// Provides translations for the English language
/// and `GG` country/region code locale.
class EnGgCurrenciesL10N extends IsoLocaleMapper<String> {
  /// Provides currency translations for the `en_GG` locale.
  EnGgCurrenciesL10N() {
    map.addAll({"GBP": "UK Pound"});
  }
}
