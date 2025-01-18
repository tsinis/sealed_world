import "../iso_locale_mapper.dart";

/// Contains 10 translation(s).
/// Provides translations for the Azerbaijani language
/// and Cyrillic script locale.
class AzCyrlLanguagesL10N extends IsoLocaleMapper<String> {
  /// Provides language translations for the `az_Cyrl` locale.
  AzCyrlLanguagesL10N() {
    map.addAll({
      "AZE": "Азәрбајҹан",
      "DEU": "алманҹа",
      "ENG": "инҝилисҹә",
      "FRA": "франсызҹа",
      "ITA": "италјанҹа",
      "JPN": "јапонҹа",
      "POR": "португалҹа",
      "RUS": "русҹа",
      "SPA": "испанҹа",
      "ZHO": "чинҹә",
    });
  }
}
