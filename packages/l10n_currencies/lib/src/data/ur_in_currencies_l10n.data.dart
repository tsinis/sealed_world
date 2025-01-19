import "../iso_locale_mapper.dart";

/// Contains 8 translation(s).
/// Provides translations for the Urdu language
/// and `IN` country/region code locale.
class UrInCurrenciesL10N extends IsoLocaleMapper<String> {
  /// Provides currency translations for the `ur_IN` locale.
  UrInCurrenciesL10N() {
    map.addAll({
      "CRC": "کوسٹا ریکا کولون",
      "CUC": "قابل منتقلی کیوبائی پیسو",
      "CUP": "کیوبائی پیسو",
      "CVE": "کیپ ورڈی اسکیوڈو",
      "ERN": "اریٹیریائی ناکفا",
      "GBP": "برطانوی پاونڈ سٹرلنگ",
      "GHS": "گھانی سیڈی",
      "WST": "ساموآئی ٹالا",
    });
  }
}
