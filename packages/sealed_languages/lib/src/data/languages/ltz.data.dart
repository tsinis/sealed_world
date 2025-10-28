part of "../../model/language/language.dart";

extension type const _LtzFactory._(LangLtz _) implements LangLtz {
  const _LtzFactory() : this._(const LangLtz._());
}

/// A class that represents the Luxembourgish (Letzeburgesch) language.
class LangLtz extends NaturalLanguage {
  /// {@template sealed_world.language_ltz_constructor}
  /// Creates a instance of [LangLtz] (Luxembourgish (Letzeburgesch) language).
  ///
  /// ISO 639-2/T code: `LTZ`, ISO 639-1 code: `LB`.
  /// {@endtemplate}
  const factory LangLtz() = _LtzFactory;

  const LangLtz._()
    : super(
        name: "Luxembourgish (Letzeburgesch)",
        code: "LTZ",
        codeShort: "LB",
        namesNative: const ["Lëtzebuergesch"],
        family: const IndoEuropean(),
      );
}
