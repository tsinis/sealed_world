import "../../model/language/submodels/natural_language.dart";
import "../../model/language_family/submodels/natural_language_family.dart";

/// Provides convenient getters for ISO 639 language codes
/// on a [NaturalLanguage] class.
extension NaturalLanguageGetters on NaturalLanguage {
  /// Returns boolean indicating whether this [NaturalLanguage] is a constructed
  /// language, i.e. whether its [family] is [Constructed].
  ///
  /// ```dart
  /// import 'package:sealed_languages/sealed_languages.dart';
  ///
  /// void main() {
  ///   const esperanto = LangEpo();
  ///   assert(esperanto.isConstructed);
  ///   const english = LangEng();
  ///   assert(!english.isConstructed);
  /// }
  /// ```
  bool get isConstructed => family is Constructed;

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
