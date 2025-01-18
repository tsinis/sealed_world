import "../iso_locale_mapper.dart";

/// Contains 4 translation(s).
/// Provides translations for the Swahili language
/// and `CD` country/region code locale.
class SwCdLanguagesL10N extends IsoLocaleMapper<String> {
  /// Provides language translations for the `sw_CD` locale.
  SwCdLanguagesL10N() {
    map.addAll({
      "AKA": "Kiakan",
      "BEN": "Kibangla",
      "CES": "Kichecki",
      "ENG": "Kingereza",
    });
  }
}
