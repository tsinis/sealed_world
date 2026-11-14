import "../iso_locale_mapper.dart";

/// Contains 3 translation(s).
/// Provides translations for the (Eastern) Punjabi language
/// and Arabic script locale.
class PaArabCurrenciesL10N extends IsoLocaleMapper<String> {
  /// Provides currency translations for the `pa_Arab` locale.
  new() : super(other: {"EUR": "یورو", "INR": "روپئیہ [INR]", "PKR": "روپئیہ"});
}
