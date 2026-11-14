import "../iso_locale_mapper.dart";

/// Contains 10 translation(s).
/// Provides translations for the Northern Sami language
/// and `FI` country/region code locale.
class SeFiLanguagesL10N extends IsoLocaleMapper<String> {
  /// Provides language translations for the `se_FI` locale.
  new()
    : super(
        other: {
          "BEL": "Vilgesruoššagiella",
          "BEN": "Bengalagiella",
          "FIJ": "Fižigiella",
          "HYE": "Armenagiella",
          "KAZ": "Kazakhgiella",
          "KHM": "Kambožagiella",
          "NEP": "Nepalagiella",
          "PAN": "Panjabagiella",
          "THA": "Thaigiella",
          "VIE": "Vietnamagiella",
        },
      );
}
