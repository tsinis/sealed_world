import "../iso_locale_mapper.dart";

/// Contains 2 translation(s).
/// Provides translations for the Swahili language
/// and `KE` country/region code locale.
class SwKeLanguagesL10N extends IsoLocaleMapper<String> {
  /// Provides language translations for the `sw_KE` locale.
  SwKeLanguagesL10N() {
    map.addAll({"LIM": "Kilimbugi", "TWI": "Kitwi"});
  }
}
