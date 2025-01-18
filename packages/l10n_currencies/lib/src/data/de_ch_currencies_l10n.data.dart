// ignore_for_file: avoid-unnecessary-collections
import "../iso_locale_mapper.dart";

/// Contains 1 translation(s).
/// Provides translations for the German language
/// and `CH` country/region code locale.
class DeChCurrenciesL10N extends IsoLocaleMapper<String> {
  /// Provides currency translations for the `de_CH` locale.
  DeChCurrenciesL10N() {
    map.addAll({"BYN": "Weissrussischer Rubel"});
  }
}
