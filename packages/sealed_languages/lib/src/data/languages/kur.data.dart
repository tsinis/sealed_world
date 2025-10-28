part of "../../model/language/language.dart";

extension type const _KurFactory._(LangKur _) implements LangKur {
  const _KurFactory() : this._(const LangKur._());
}

/// A class that represents the Kurdish language.
class LangKur extends NaturalLanguage {
  /// {@template sealed_world.language_kur_constructor}
  /// Creates a instance of [LangKur] (Kurdish language).
  ///
  /// ISO 639-2/T code: `KUR`, ISO 639-1 code: `KU`.
  /// {@endtemplate}
  const factory LangKur() = _KurFactory;

  const LangKur._()
    : super(
        name: "Kurdish",
        code: "KUR",
        codeShort: "KU",
        namesNative: const ["Kurdî", "كوردی‎"],
        family: const IndoEuropean(),
        scripts: const {ScriptArab(), ScriptLatn(), ScriptCyrl()},
      );
}
