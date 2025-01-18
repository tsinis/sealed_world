// ignore_for_file: avoid-unnecessary-collections
import "../iso_locale_mapper.dart";

/// Contains 1 translation(s).
/// Provides translations for the Portuguese language
/// and `MZ` country/region code locale.
class PtMzCurrenciesL10N extends IsoLocaleMapper<String> {
  /// Provides currency translations for the `pt_MZ` locale.
  PtMzCurrenciesL10N() {
    map.addAll({"MZN": "Metical de Moçambique"});
  }
}
