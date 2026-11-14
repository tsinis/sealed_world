// ignore_for_file: avoid-unnecessary-collections
import "../iso_locale_mapper.dart";

/// Contains 5 translation(s).
/// Provides translations for the Tajik language
/// locale.
class TgCurrenciesL10N extends IsoLocaleMapper<String> {
  /// Provides currency translations for the `tg` locale.
  TgCurrenciesL10N() {
    map.addAll({
      "KRW": "Вони Кореяи Ҷанубӣ",
      "RUB": "Рубли русӣ",
      "TWD": "Доллари нави Тайван",
      "XCG": "Гулдени Кариб",
      "ZWG": "Тиллоии Зимбабве",
    });
  }
}
