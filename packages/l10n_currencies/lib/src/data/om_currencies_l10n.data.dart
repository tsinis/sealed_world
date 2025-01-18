import "../iso_locale_mapper.dart";

/// Contains 3 translation(s).
/// Provides translations for the Oromo language
/// locale.
class OmCurrenciesL10N extends IsoLocaleMapper<String> {
  /// Provides currency translations for the `om` locale.
  OmCurrenciesL10N() {
    map.addAll({
      "CNY": "Chinese Yuan Renminbi",
      "ETB": "Itoophiyaa Birrii",
      "RUB": "Russian Ruble",
    });
  }
}
