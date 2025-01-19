import "../iso_locale_mapper.dart";

/// Contains 8 translation(s).
/// Provides translations for the Swahili language
/// and `CD` country/region code locale.
class SwCdCurrenciesL10N extends IsoLocaleMapper<String> {
  /// Provides currency translations for the `sw_CD` locale.
  SwCdCurrenciesL10N() {
    map.addAll({
      "CNY": "Yuan Renminbi ya China",
      "ETB": "Bir ya Uhabeshi",
      "JPY": "Sarafu ya Kijapani",
      "MGA": "Ariary ya Bukini",
      "MRU": "Ugwiya ya Moritania",
      "SCR": "Rupia ya Shelisheli",
      "XAF": "Faranga CFA BEAC",
      "XOF": "Faranga CFA BCEAO",
    });
  }
}
