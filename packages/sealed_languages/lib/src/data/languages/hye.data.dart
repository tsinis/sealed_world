part of "../../model/language/language.dart";

extension type const _HyeFactory._(LangHye _) implements LangHye {
  const _HyeFactory() : this._(const LangHye._());
}

/// A class that represents the Armenian language.
class LangHye extends NaturalLanguage {
  /// {@template sealed_world.language_hye_constructor}
  /// Creates a instance of [LangHye] (Armenian language).
  ///
  /// ISO 639-2/T code: `HYE`, ISO 639-1 code: `HY`.
  /// {@endtemplate}
  const factory LangHye() = _HyeFactory;

  const LangHye._()
    : super(
        name: "Armenian",
        code: "HYE",
        codeShort: "HY",
        namesNative: const ["Հայերեն"],
        bibliographicCode: "ARM",
        family: const IndoEuropean(),
        scripts: const {ScriptArmn()},
      );
}
