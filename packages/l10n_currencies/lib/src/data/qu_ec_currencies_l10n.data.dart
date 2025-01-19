// ignore_for_file: avoid-unnecessary-collections
import "../iso_locale_mapper.dart";

/// Contains 1 translation(s).
/// Provides translations for the Quechua language
/// and `EC` country/region code locale.
class QuEcCurrenciesL10N extends IsoLocaleMapper<String> {
  /// Provides currency translations for the `qu_EC` locale.
  QuEcCurrenciesL10N() {
    map.addAll({"USD": "USD"});
  }
}
