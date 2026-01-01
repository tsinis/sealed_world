part of "../../model/language/submodels/natural_language.dart";

extension type const _GlvFactory._(LangGlv _) implements LangGlv {
  const _GlvFactory() : this._(const LangGlv._());
}

/// A class that represents the Manx language.
final class LangGlv extends NaturalLanguage {
  /// {@template sealed_world.language_glv_constructor}
  /// Creates a instance of [LangGlv] (Manx language).
  ///
  /// ISO 639-2/T code: `GLV`, ISO 639-1 code: `GV`.
  /// {@endtemplate}
  const factory LangGlv() = _GlvFactory;

  const LangGlv._()
    : super._(
        name: "Manx",
        code: "GLV",
        codeShort: "GV",
        namesNative: const ["Gaelg", "Gailck"],
        family: const IndoEuropean(),
      );
}
