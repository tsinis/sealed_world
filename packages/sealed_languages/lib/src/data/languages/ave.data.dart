part of "../../model/language/submodels/natural_language.dart";

extension type const _AveFactory._(LangAve _) implements LangAve {
  const _AveFactory() : this._(const LangAve._());
}

/// A class that represents the Avestan language.
final class LangAve extends NaturalLanguage {
  /// {@template sealed_world.language_ave_constructor}
  /// Creates a instance of [LangAve] (Avestan language).
  ///
  /// ISO 639-2/T code: `AVE`, ISO 639-1 code: `AE`.
  /// {@endtemplate}
  const factory LangAve() = _AveFactory;

  const LangAve._()
    : super._(
        name: "Avestan",
        code: "AVE",
        codeShort: "AE",
        namesNative: const ["avesta"],
        family: const IndoEuropean(),
        isRightToLeft: true,
        scripts: const {ScriptAvst()},
      );
}
