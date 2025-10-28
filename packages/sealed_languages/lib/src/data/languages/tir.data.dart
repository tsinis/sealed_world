part of "../../model/language/language.dart";

extension type const _TirFactory._(LangTir _) implements LangTir {
  const _TirFactory() : this._(const LangTir._());
}

/// A class that represents the Tigrinya language.
class LangTir extends NaturalLanguage {
  /// {@template sealed_world.language_tir_constructor}
  /// Creates a instance of [LangTir] (Tigrinya language).
  ///
  /// ISO 639-2/T code: `TIR`, ISO 639-1 code: `TI`.
  /// {@endtemplate}
  const factory LangTir() = _TirFactory;

  const LangTir._()
    : super(
        name: "Tigrinya",
        code: "TIR",
        codeShort: "TI",
        namesNative: const ["ትግርኛ"],
        family: const AfroAsiatic(),
        scripts: const {ScriptEthi()},
      );
}
