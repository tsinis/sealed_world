part of "../../model/language/language.dart";

extension type const _SndFactory._(LangSnd _) implements LangSnd {
  const _SndFactory() : this._(const LangSnd._());
}

/// A class that represents the Sindhi language.
class LangSnd extends NaturalLanguage {
  /// {@template sealed_world.language_snd_constructor}
  /// Creates a instance of [LangSnd] (Sindhi language).
  ///
  /// ISO 639-2/T code: `SND`, ISO 639-1 code: `SD`.
  /// {@endtemplate}
  const factory LangSnd() = _SndFactory;

  const LangSnd._()
    : super(
        name: "Sindhi",
        code: "SND",
        codeShort: "SD",
        namesNative: const ["सिन्धी", "سنڌي، سندھی‎"],
        family: const IndoEuropean(),
        isRightToLeft: true,
        scripts: const {ScriptArab(), ScriptDeva()},
      );
}
