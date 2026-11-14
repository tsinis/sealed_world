import "../iso_locale_mapper.dart";

/// Contains 4 translation(s).
/// Provides translations for the Quechua language
/// locale.
class QuCurrenciesL10N extends IsoLocaleMapper<String> {
  /// Provides currency translations for the `qu` locale.
  new()
    : super(
        other: {
          "KRW": "Won Surcoreano",
          "TWD": "Nuevo Dólar Taiwanés",
          "XCG": "Caribe guilderkuna",
          "ZWG": "Zimbabuemanta quri",
        },
      );
}
