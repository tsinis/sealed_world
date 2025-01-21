// ignore_for_file: avoid-unnecessary-collections
import "../iso_locale_mapper.dart";

/// Contains 1 translation(s).
/// Provides translations for the Romanian language
/// and `MD` country/region code locale.
class RoMdCountriesL10N extends IsoLocaleMapper<String> {
  /// Provides country translations for the `ro_MD` locale.
  RoMdCountriesL10N() {
    map.addAll({"MMR": "Myanmar"});
  }
}
