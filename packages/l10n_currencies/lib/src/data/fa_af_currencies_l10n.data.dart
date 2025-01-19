import "../iso_locale_mapper.dart";

/// Contains 13 translation(s).
/// Provides translations for the Persian (Farsi) language
/// and `AF` country/region code locale.
class FaAfCurrenciesL10N extends IsoLocaleMapper<String> {
  /// Provides currency translations for the `fa_AF` locale.
  FaAfCurrenciesL10N() {
    map.addAll({
      "AUD": "دالر آسترالیا",
      "BND": "دالر برونی",
      "BYN": "روبل روسیهٔ سفید",
      "CAD": "دالر کانادا",
      "CHF": "فرانک سویس",
      "DKK": "کرون دنمارک",
      "JPY": "ین جاپان",
      "MXN": "پزوی مکسیکو",
      "NOK": "کرون ناروی",
      "SEK": "کرون سویدن",
      "SGD": "دالر سینگاپور",
      "TJS": "سامانی تاجکستان",
      "USD": "دالر امریکا",
    });
  }
}
