part of "../../model/language/language.dart";

extension type const _ThaFactory._(LangTha _) implements LangTha {
  const _ThaFactory() : this._(const LangTha._());
}

/// A class that represents the Thai language.
class LangTha extends NaturalLanguage {
  /// {@template sealed_world.language_tha_constructor}
  /// Creates a instance of [LangTha] (Thai language).
  ///
  /// ISO 639-2/T code: `THA`, ISO 639-1 code: `TH`.
  /// {@endtemplate}
  const factory LangTha() = _ThaFactory;

  const LangTha._()
    : super(
        name: "Thai",
        code: "THA",
        codeShort: "TH",
        namesNative: const ["ไทย"],
        family: const TaiKadai(),
        scripts: const {ScriptThai()},
      );
}
