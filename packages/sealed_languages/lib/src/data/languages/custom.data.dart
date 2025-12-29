part of "../../model/language/submodels/natural_language.dart";

/// A class that represents the user-defined custom natural language.
final class LangCustom extends NaturalLanguage {
  /// Creates a custom instance of [NaturalLanguage] (non-standard,
  /// custom natural language).
  /// {@macro natural_language_constructor}
  /// {@macro permissive_constructor}
  const LangCustom({
    super.code,
    super.codeShort,
    super.bibliographicCode,
    super.family,
    super.isRightToLeft,
    super.mapper,
    super.name,
    super.namesNative,
    super.scripts,
  }) : super._permissive();
}
