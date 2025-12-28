part of "../../model/language/submodels/natural_language.dart";

extension type const _ZhoFactory._(LangZho _) implements LangZho {
  const _ZhoFactory() : this._(const LangZho._());
}

/// A class that represents the Chinese language.
final class LangZho extends NaturalLanguage {
  /// {@template sealed_world.language_zho_constructor}
  /// Creates a instance of [LangZho] (Chinese language).
  ///
  /// ISO 639-2/T code: `ZHO`, ISO 639-1 code: `ZH`.
  /// {@endtemplate}
  const factory LangZho() = _ZhoFactory;

  const LangZho._()
    : super._(
        name: "Chinese",
        code: "ZHO",
        codeShort: "ZH",
        namesNative: const ["中文 (Zhōngwén)", "汉语", "漢語"],
        bibliographicCode: "CHI",
        family: const SinoTibetan(),
        scripts: const {ScriptHans(), ScriptHant(), ScriptLatn()},
      );
}
