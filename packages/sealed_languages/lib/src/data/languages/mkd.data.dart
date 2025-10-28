part of "../../model/language/language.dart";

extension type const _MkdFactory._(LangMkd _) implements LangMkd {
  const _MkdFactory() : this._(const LangMkd._());
}

/// A class that represents the Macedonian language.
class LangMkd extends NaturalLanguage {
  /// {@template sealed_world.language_mkd_constructor}
  /// Creates a instance of [LangMkd] (Macedonian language).
  ///
  /// ISO 639-2/T code: `MKD`, ISO 639-1 code: `MK`.
  /// {@endtemplate}
  const factory LangMkd() = _MkdFactory;

  const LangMkd._()
    : super(
        name: "Macedonian",
        code: "MKD",
        codeShort: "MK",
        namesNative: const ["македонски јазик"],
        bibliographicCode: "MAC",
        family: const IndoEuropean(),
        scripts: const {ScriptCyrl()},
      );
}
