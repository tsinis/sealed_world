import "../../model/language/submodels/natural_language.dart";

/// Provides convenient getters for ISO 639 language codes
/// on a [NaturalLanguage] class.
extension NaturalLanguageGetters on NaturalLanguage {
  static const _constructedLanguages = <NaturalLanguage>{
    LangEpo(),
    LangIle(),
    LangIna(),
    LangIdo(),
    LangVol(),
  };

  /// Returns boolean indicating whether this [NaturalLanguage] is a constructed
  /// language.
  ///
  /// ```dart
  /// import "package:sealed_languages/sealed_languages.dart";
  ///
  /// void main() {
  ///   const esperanto = LangEpo();
  ///   assert(esperanto.isConstructed);
  ///   const english = LangEng();
  ///   assert(!english.isConstructed);
  /// }
  /// ```
  bool get isConstructed => _constructedLanguages.contains(this);

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
