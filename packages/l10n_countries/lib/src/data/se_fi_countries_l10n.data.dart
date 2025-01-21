import "../iso_locale_mapper.dart";

/// Contains 2 translation(s).
/// Provides translations for the Northern Sami language
/// and `FI` country/region code locale.
class SeFiCountriesL10N extends IsoLocaleMapper<String> {
  /// Provides country translations for the `se_FI` locale.
  SeFiCountriesL10N() {
    map.addAll({"BIH": "Bosnia ja Hercegovina", "KHM": "Kamboža"});
  }
}
