part of "../../model/language/language.dart";

extension type const _AzeFactory._(LangAze _) implements LangAze {
  const _AzeFactory() : this._(const LangAze._());
}

/// A class that represents the Azerbaijani language.
class LangAze extends NaturalLanguage {
  /// {@template sealed_world.language_aze_constructor}
  /// Creates a instance of [LangAze] (Azerbaijani language).
  ///
  /// ISO 639-2/T code: `AZE`, ISO 639-1 code: `AZ`.
  /// {@endtemplate}
  const factory LangAze() = _AzeFactory;

  const LangAze._()
    : super(
        name: "Azerbaijani",
        code: "AZE",
        codeShort: "AZ",
        namesNative: const ["azərbaycan dili"],
        family: const Turkic(),
        scripts: const {ScriptArab(), ScriptLatn(), ScriptCyrl()},
      );
}
