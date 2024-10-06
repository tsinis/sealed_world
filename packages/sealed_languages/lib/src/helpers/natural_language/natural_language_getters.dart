import "../../model/language/language.dart";

/// Provides convenient getters for ISO 639 language codes
/// on a [NaturalLanguage] class.
extension NaturalLanguageGetters on NaturalLanguage {
  /// Returns the ISO 639-1 language code for a [NaturalLanguage].
  ///
  /// Provides same data as [codeShort].

  String get iso639one => codeShort;

  /// Returns the ISO 639-2/T language code for this [NaturalLanguage].
  ///
  /// Provides same data as [code].

  String get iso639twoT => code;

  /// Returns the ISO 639-2/B bibliographic language code for this [NaturalLanguage],
  /// or `null` if none is available.
  ///
  /// Provides same data as [bibliographicCode].

  String? get iso639twoB => bibliographicCode;
}
