import "../../interfaces/iso_standardized.dart";
import "../../model/language/language.dart";
import "../../model/script/writing_system.dart";

/// Extension on [IsoStandardized] objects that provides type checking
/// functionality for language and script types.
///
/// This extension allows for easy identification of whether an
/// [IsoStandardized] instance is a [Script] or a [NaturalLanguage].
@Deprecated("Please use is check instead.")
extension IsoStandardizedLanguageScriptExtension on IsoStandardized? {
  /// Returns `true` if this object is an instance of [NaturalLanguage].
  ///
  /// This getter can be used to check if an [IsoStandardized] object
  /// represents a natural language.
  @Deprecated("Please use `is NaturalLanguage` check instead.")
  bool get isNaturalLanguage => this is NaturalLanguage;

  /// Returns `true` if this object is an instance of [Script].
  ///
  /// This getter can be used to check if an [IsoStandardized] object
  /// represents a writing system.
  @Deprecated("Please use `is Script` check instead.")
  bool get isScript => this is Script;
}
