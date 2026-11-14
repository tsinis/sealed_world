import "../iso_locale_mapper.dart";

/// Contains 3 translation(s).
/// Provides translations for the Pashto (Pushto) language
/// and `PK` country/region code locale.
class PsPkCountriesL10N extends IsoLocaleMapper<String> {
  /// Provides country translations for the `ps_PK` locale.
  new()
    : super(
        other: {
          "ATF": "د فرانسے جنوبي سیمے",
          "PSE": "فلسطين سيمے",
          "TCA": "د ترکیے او کیکاسو ټاپو",
        },
      );
}
