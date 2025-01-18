// ignore_for_file: avoid-unnecessary-collections
import "../iso_locale_mapper.dart";

/// Contains 1 translation(s).
/// Provides translations for the German language
/// and `CH` country/region code locale.
class DeChLanguagesL10N extends IsoLocaleMapper<String> {
  /// Provides language translations for the `de_CH` locale.
  DeChLanguagesL10N() {
    map.addAll({"BEL": "Weissrussisch"});
  }
}
