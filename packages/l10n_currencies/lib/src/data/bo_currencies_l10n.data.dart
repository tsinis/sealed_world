import "../iso_locale_mapper.dart";

/// Contains 3 translation(s).
/// Provides translations for the Tibetan Standard language
/// locale.
class BoCurrenciesL10N extends IsoLocaleMapper<String> {
  /// Provides currency translations for the `bo` locale.
  new()
    : super(
        other: {"CNY": "ཡུ་ཨན་", "INR": "རྒྱ་གར་སྒོར་", "USD": "ཨ་རིའི་སྒོར་"},
      );
}
