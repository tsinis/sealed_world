// ignore_for_file: avoid-unnecessary-collections
import "../iso_locale_mapper.dart";

/// Contains 4 translation(s).
/// Provides translations for the Quechua language
/// locale.
class QuCurrenciesL10N extends IsoLocaleMapper<String> {
  /// Provides currency translations for the `qu` locale.
  QuCurrenciesL10N() {
    map.addAll({
      "PEN": "PEN",
      "USD": "USD",
      "XCG": "Caribe guilderkuna",
      "ZWG": "Zimbabuemanta quri",
    });
  }
}
