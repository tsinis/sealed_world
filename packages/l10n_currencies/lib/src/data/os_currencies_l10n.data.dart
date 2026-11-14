import "../iso_locale_mapper.dart";

/// Contains 6 translation(s).
/// Provides translations for the Ossetian (Ossetic) language
/// locale.
class OsCurrenciesL10N extends IsoLocaleMapper<String> {
  /// Provides currency translations for the `os` locale.
  new()
    : super(
        other: {
          "BRL": "Бразилиаг реал",
          "EUR": "Евро",
          "GBP": "Бритайнаг Фунт",
          "GEL": "Лар",
          "RUB": "Сом",
          "USD": "АИШ-ы Доллар",
        },
      );
}
