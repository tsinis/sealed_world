// ignore_for_file: avoid-unnecessary-collections
import "../iso_locale_mapper.dart";

/// Contains 1 translation.
/// Provides translations for the Sindhi language
/// locale.
class SdCurrenciesL10N extends IsoLocaleMapper<String> {
  /// Provides currency translations for the `sd` locale.
  SdCurrenciesL10N() {
    map.addAll({
      "KRW": "ڏکڻ ڪوريائي ون",
      "RUB": "रशियनु रुबलु",
      "TWD": "نيو تائيوان ڊالر",
      "XCG": "ڪريبيئن گلڊر",
      "ZWG": "زمبابوي سون",
    });
  }
}
