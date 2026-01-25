part of "../../model/language/submodels/natural_language.dart";

extension type const _BulFactory._(LangBul _) implements LangBul {
  const _BulFactory() : this._(const LangBul._());
}

/// A class that represents the Bulgarian language.
final class LangBul extends NaturalLanguage {
  /// {@template sealed_world.language_bul_constructor}
  /// Creates a instance of [LangBul] (Bulgarian language).
  ///
  /// ISO 639-2/T code: `BUL`, ISO 639-1 code: `BG`.
  /// {@endtemplate}
  const factory LangBul() = _BulFactory;

  const LangBul._()
    : super._(
        name: "Bulgarian",
        code: "BUL",
        codeShort: "BG",
        namesNative: const ["Български език"],
        family: const IndoEuropean(),
        scripts: const {ScriptCyrl()},
      );
}
