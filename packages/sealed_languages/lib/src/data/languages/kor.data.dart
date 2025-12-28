part of "../../model/language/submodels/natural_language.dart";

extension type const _KorFactory._(LangKor _) implements LangKor {
  const _KorFactory() : this._(const LangKor._());
}

/// A class that represents the Korean language.
final class LangKor extends NaturalLanguage {
  /// {@template sealed_world.language_kor_constructor}
  /// Creates a instance of [LangKor] (Korean language).
  ///
  /// ISO 639-2/T code: `KOR`, ISO 639-1 code: `KO`.
  /// {@endtemplate}
  const factory LangKor() = _KorFactory;

  const LangKor._()
    : super._(
        name: "Korean",
        code: "KOR",
        codeShort: "KO",
        namesNative: const ["한국어"],
        family: const Koreanic(),
        scripts: const {ScriptKore()},
      );
}
