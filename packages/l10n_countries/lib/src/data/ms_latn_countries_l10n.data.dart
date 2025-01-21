import "../iso_locale_mapper.dart";

/// Contains 5 translation(s).
/// Provides translations for the Malay language
/// and Latin script locale.
class MsLatnCountriesL10N extends IsoLocaleMapper<String> {
  /// Provides country translations for the `ms_Latn` locale.
  MsLatnCountriesL10N() {
    map.addAll({
      "BLM": "Saint Barthélemy",
      "CZE": "Republik Czech",
      "GRC": "Yunani",
      "MKD": "Macedonia",
      "UNK": "Kosovo",
    });
  }
}
