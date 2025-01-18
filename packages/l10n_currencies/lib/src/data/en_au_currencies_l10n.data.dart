import "../iso_locale_mapper.dart";

/// Contains 8 translation(s).
/// Provides translations for the English language
/// and `AU` country/region code locale.
class EnAuCurrenciesL10N extends IsoLocaleMapper<String> {
  /// Provides currency translations for the `en_AU` locale.
  EnAuCurrenciesL10N() {
    map.addAll({
      "BAM": "Bosnia-Herzegovina Convertible Marka",
      "BBD": "Barbados Dollar",
      "BMD": "Bermuda Dollar",
      "BOB": "Boliviano",
      "ILS": "Israeli Shekel",
      "QAR": "Qatari Riyal",
      "SRD": "Suriname Dollar",
      "UYU": "Peso Uruguayo",
    });
  }
}
