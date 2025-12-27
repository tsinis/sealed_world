// ignore_for_file: avoid-unnecessary-collections
import "../iso_locale_mapper.dart";

/// Contains 3 translation(s).
/// Provides translations for the Tajik language
/// locale.
class TgCurrenciesL10N extends IsoLocaleMapper<String> {
  /// Provides currency translations for the `tg` locale.
  TgCurrenciesL10N() {
    map.addAll({
      "RUB": "Рубли русӣ",
      "XCG": "Гулдени Кариб",
      "ZWG": "Тиллоии Зимбабве",
    });
  }
}
