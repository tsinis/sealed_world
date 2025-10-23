part of "../../model/language/language.dart";

extension type const _MonFactory._(LangMon _) implements LangMon {
  const _MonFactory() : this._(const LangMon._());
}

/// A class that represents the Mongolian language.
class LangMon extends NaturalLanguage {
  /// {@template sealed_world.language_mon_constructor}
  /// Creates a instance of [LangMon] (Mongolian language).
  ///
  /// ISO 639-2/T code: `MON`, ISO 639-1 code: `MN`.
  /// {@endtemplate}
  const factory LangMon() = _MonFactory;

  const LangMon._()
    : super(
        name: "Mongolian",
        code: "MON",
        codeShort: "MN",
        namesNative: const ["Монгол хэл"],
        family: const Mongolic(),
        scripts: const {ScriptCyrl(), ScriptMong()},
      );
}
