part of "../../model/language/language.dart";

extension type const _TukFactory._(LangTuk _) implements LangTuk {
  const _TukFactory() : this._(const LangTuk._());
}

/// A class that represents the Turkmen language.
class LangTuk extends NaturalLanguage {
  /// {@template sealed_world.language_tuk_constructor}
  /// Creates a instance of [LangTuk] (Turkmen language).
  ///
  /// ISO 639-2/T code: `TUK`, ISO 639-1 code: `TK`.
  /// {@endtemplate}
  const factory LangTuk() = _TukFactory;

  const LangTuk._()
    : super(
        name: "Turkmen",
        code: "TUK",
        codeShort: "TK",
        namesNative: const ["Türkmen", "Түркмен"],
        family: const Turkic(),
        scripts: const {ScriptLatn(), ScriptCyrl()},
      );
}
