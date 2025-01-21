// ignore_for_file: avoid-unnecessary-collections
import "../iso_locale_mapper.dart";

/// Contains 1 translation(s).
/// Provides translations for the English language
/// and `DG` country/region code locale.
class EnDgCountriesL10N extends IsoLocaleMapper<String> {
  /// Provides country translations for the `en_DG` locale.
  EnDgCountriesL10N() {
    map.addAll({"UNK": "Kosovo"});
  }
}
