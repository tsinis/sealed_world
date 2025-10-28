part of "../../model/language/language.dart";

extension type const _LitFactory._(LangLit _) implements LangLit {
  const _LitFactory() : this._(const LangLit._());
}

/// A class that represents the Lithuanian language.
class LangLit extends NaturalLanguage {
  /// {@template sealed_world.language_lit_constructor}
  /// Creates a instance of [LangLit] (Lithuanian language).
  ///
  /// ISO 639-2/T code: `LIT`, ISO 639-1 code: `LT`.
  /// {@endtemplate}
  const factory LangLit() = _LitFactory;

  const LangLit._()
    : super(
        name: "Lithuanian",
        code: "LIT",
        codeShort: "LT",
        namesNative: const ["lietuvių kalba"],
        family: const IndoEuropean(),
      );
}
