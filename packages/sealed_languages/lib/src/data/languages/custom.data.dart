part of "../../model/language/submodels/natural_language.dart";

/// A class that represents the user-defined custom natural language.
final class LangCustom extends NaturalLanguage {
  /// Creates a custom instance of [NaturalLanguage] (non-standard,
  /// custom natural language).
  /// {@macro natural_language_constructor}
  /// {@macro permissive_constructor}
  const LangCustom({
    super.code,
    super.name,
    super.codeShort,
    super.namesNative,
    super.bibliographicCode,
    super.family = const IndoEuropean(),
    super.isRightToLeft = false,
    super.scripts = const {ScriptLatn()},
    super.mapper,
  }) : super._permissive();
}
