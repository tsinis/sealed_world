// ignore_for_file: avoid-unnecessary-collections
import "../iso_locale_mapper.dart";

/// Contains 1 translation(s).
/// Provides translations for the Portuguese language
/// and `MO` country/region code locale.
class PtMoCurrenciesL10N extends IsoLocaleMapper<String> {
  /// Provides currency translations for the `pt_MO` locale.
  PtMoCurrenciesL10N() {
    map.addAll({"MOP": "Pataca de Macau"});
  }
}
