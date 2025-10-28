part of "../../model/language/language.dart";

extension type const _PliFactory._(LangPli _) implements LangPli {
  const _PliFactory() : this._(const LangPli._());
}

/// A class that represents the Pāli language.
class LangPli extends NaturalLanguage {
  /// {@template sealed_world.language_pli_constructor}
  /// Creates a instance of [LangPli] (Pāli language).
  ///
  /// ISO 639-2/T code: `PLI`, ISO 639-1 code: `PI`.
  /// {@endtemplate}
  const factory LangPli() = _PliFactory;

  const LangPli._()
    : super(
        name: "Pāli",
        code: "PLI",
        codeShort: "PI",
        namesNative: const ["पाऴि"],
        family: const IndoEuropean(),
        scripts: const {
          ScriptLatn(),
          ScriptKhmr(),
          ScriptThai(),
          ScriptDeva(),
          ScriptMymr(),
          ScriptSinh(),
          ScriptLaoo(),
        },
      );
}
