part of "../../model/language/language.dart";

extension type const _MyaFactory._(LangMya _) implements LangMya {
  const _MyaFactory() : this._(const LangMya._());
}

/// A class that represents the Burmese language.
class LangMya extends NaturalLanguage {
  /// {@template sealed_world.language_mya_constructor}
  /// Creates a instance of [LangMya] (Burmese language).
  ///
  /// ISO 639-2/T code: `MYA`, ISO 639-1 code: `MY`.
  /// {@endtemplate}
  const factory LangMya() = _MyaFactory;

  const LangMya._()
    : super(
        name: "Burmese",
        code: "MYA",
        codeShort: "MY",
        namesNative: const ["ဗမာစာ"],
        bibliographicCode: "BUR",
        family: const SinoTibetan(),
        scripts: const {ScriptMymr()},
      );
}
