part of "../../model/language/language.dart";

extension type const _KomFactory._(LangKom _) implements LangKom {
  const _KomFactory() : this._(const LangKom._());
}

/// A class that represents the Komi language.
class LangKom extends NaturalLanguage {
  /// {@template sealed_world.language_kom_constructor}
  /// Creates a instance of [LangKom] (Komi language).
  ///
  /// ISO 639-2/T code: `KOM`, ISO 639-1 code: `KV`.
  /// {@endtemplate}
  const factory LangKom() = _KomFactory;

  const LangKom._()
    : super(
        name: "Komi",
        code: "KOM",
        codeShort: "KV",
        namesNative: const ["коми кыв"],
        family: const Uralic(),
        scripts: const {ScriptCyrl()},
      );
}
