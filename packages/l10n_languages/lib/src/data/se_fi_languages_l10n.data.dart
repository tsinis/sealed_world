import "../iso_locale_mapper.dart";

/// Contains 10 translation(s).
/// Provides translations for the Northern Sami language
/// and `FI` country/region code locale.
class SeFiLanguagesL10N extends IsoLocaleMapper<String> {
  /// Provides language translations for the `se_FI` locale.
  SeFiLanguagesL10N() {
    map.addAll({
      "BEL": "vilgesruoššagiella",
      "BEN": "bengalagiella",
      "FIJ": "fižigiella",
      "HYE": "armenagiella",
      "KAZ": "kazakhgiella",
      "KHM": "kambožagiella",
      "NEP": "nepalagiella",
      "PAN": "panjabagiella",
      "THA": "thaigiella",
      "VIE": "vietnamagiella",
    });
  }
}
