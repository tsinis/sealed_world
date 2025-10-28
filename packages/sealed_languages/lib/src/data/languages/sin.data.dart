part of "../../model/language/language.dart";

extension type const _SinFactory._(LangSin _) implements LangSin {
  const _SinFactory() : this._(const LangSin._());
}

/// A class that represents the Sinhalese (Sinhala) language.
class LangSin extends NaturalLanguage {
  /// {@template sealed_world.language_sin_constructor}
  /// Creates a instance of [LangSin] (Sinhalese (Sinhala) language).
  ///
  /// ISO 639-2/T code: `SIN`, ISO 639-1 code: `SI`.
  /// {@endtemplate}
  const factory LangSin() = _SinFactory;

  const LangSin._()
    : super(
        name: "Sinhalese (Sinhala)",
        code: "SIN",
        codeShort: "SI",
        namesNative: const ["සිංහල"],
        family: const IndoEuropean(),
        scripts: const {ScriptSinh()},
      );
}
