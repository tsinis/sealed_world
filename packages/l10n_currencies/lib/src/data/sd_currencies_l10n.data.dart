// ignore_for_file: avoid-unnecessary-collections
import "../iso_locale_mapper.dart";

/// Contains 3 translation(s).
/// Provides translations for the Sindhi language
/// locale.
class SdCurrenciesL10N extends IsoLocaleMapper<String> {
  /// Provides currency translations for the `sd` locale.
  SdCurrenciesL10N() {
    map.addAll({
      "RUB": "रशियनु रुबलु",
      "XCG": "ڪريبيئن گلڊر",
      "ZWG": "زمبابوي سون",
    });
  }
}
