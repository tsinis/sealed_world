part of "../../model/language/submodels/natural_language.dart";

extension type const _MonFactory._(LangMon _) implements LangMon {
  const new() : this._(const LangMon._());
}

/// A class that represents the Mongolian language.
final class LangMon extends NaturalLanguage {
  /// {@template sealed_world.language_mon_constructor}
  /// Creates a instance of [LangMon] (Mongolian language).
  ///
  /// ISO 639-2/T code: `MON`, ISO 639-1 code: `MN`.
  /// {@endtemplate}
  const factory() = _MonFactory;

  const new _()
    : super._(
        name: "Mongolian",
        code: "MON",
        codeShort: "MN",
        namesNative: const ["Монгол хэл"],
        family: const Mongolic(),
        scripts: const {ScriptCyrl(), ScriptMong()},
      );
}
