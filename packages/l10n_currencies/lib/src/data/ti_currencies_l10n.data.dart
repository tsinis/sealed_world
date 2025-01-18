import "../iso_locale_mapper.dart";

/// Contains 10 translation(s).
/// Provides translations for the Tigrinya language
/// locale.
class TiCurrenciesL10N extends IsoLocaleMapper<String> {
  /// Provides currency translations for the `ti` locale.
  TiCurrenciesL10N() {
    map.addAll({
      "BRL": "የብራዚል ሪል",
      "CNY": "የቻይና ዩአን ረንሚንቢ",
      "ERN": "ናቕፋ",
      "ETB": "የኢትዮጵያ ብር",
      "EUR": "አውሮ",
      "GBP": "የእንግሊዝ ፓውንድ ስተርሊንግ",
      "INR": "የሕንድ ሩፒ",
      "JPY": "የጃፓን የን",
      "RUB": "የራሻ ሩብል",
      "USD": "የአሜሪካን ዶላር",
    });
  }
}
