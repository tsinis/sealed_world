import "../iso_locale_mapper.dart";

/// Contains 3 translation(s).
/// Provides translations for the French language
/// and `CA` country/region code locale.
class FrCaCurrenciesL10N extends IsoLocaleMapper<String> {
  /// Provides currency translations for the `fr_CA` locale.
  FrCaCurrenciesL10N() {
    map.addAll({
      "FKP": "livre des Îles Malouines",
      "TOP": "pa’anga",
      "TTD": "dollar de Trinité-et-Tobago",
    });
  }
}
