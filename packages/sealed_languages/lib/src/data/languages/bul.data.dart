part of "../../model/language/language.dart";

extension type const _BulFactory._(LangBul _) implements LangBul {
  const _BulFactory() : this._(const LangBul._());
}

/// A class that represents the Bulgarian language.
class LangBul extends NaturalLanguage {
  /// {@template sealed_world.language_bul_constructor}
  /// Creates a instance of [LangBul] (Bulgarian language).
  ///
  /// ISO 639-2/T code: `BUL`, ISO 639-1 code: `BG`.
  /// {@endtemplate}
  const factory LangBul() = _BulFactory;

  const LangBul._()
    : super(
        name: "Bulgarian",
        code: "BUL",
        codeShort: "BG",
        namesNative: const ["български език"],
        family: const IndoEuropean(),
        scripts: const {ScriptCyrl()},
      );
}
