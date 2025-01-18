// ignore_for_file: avoid-unnecessary-collections
import "../iso_locale_mapper.dart";

/// Contains 1 translation(s).
/// Provides translations for the Spanish language
/// and `CL` country/region code locale.
class EsClCurrenciesL10N extends IsoLocaleMapper<String> {
  /// Provides currency translations for the `es_CL` locale.
  EsClCurrenciesL10N() {
    map.addAll({"CLP": "Peso chileno"});
  }
}
