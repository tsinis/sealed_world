// ignore_for_file: avoid-unnecessary-collections
import "../iso_locale_mapper.dart";

/// Contains 1 translation(s).
/// Provides translations for the Spanish language
/// and `GT` country/region code locale.
class EsGtCurrenciesL10N extends IsoLocaleMapper<String> {
  /// Provides currency translations for the `es_GT` locale.
  EsGtCurrenciesL10N() {
    map.addAll({"GTQ": "quetzal"});
  }
}
