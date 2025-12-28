part of "../../model/language/submodels/natural_language.dart";

extension type const _GlgFactory._(LangGlg _) implements LangGlg {
  const _GlgFactory() : this._(const LangGlg._());
}

/// A class that represents the Galician language.
final class LangGlg extends NaturalLanguage {
  /// {@template sealed_world.language_glg_constructor}
  /// Creates a instance of [LangGlg] (Galician language).
  ///
  /// ISO 639-2/T code: `GLG`, ISO 639-1 code: `GL`.
  /// {@endtemplate}
  const factory LangGlg() = _GlgFactory;

  const LangGlg._()
    : super._(
        name: "Galician",
        code: "GLG",
        codeShort: "GL",
        namesNative: const ["galego"],
        family: const IndoEuropean(),
      );
}
