part of "../../model/language/language.dart";

extension type const _NepFactory._(LangNep _) implements LangNep {
  const _NepFactory() : this._(const LangNep._());
}

/// A class that represents the Nepali language.
class LangNep extends NaturalLanguage {
  /// {@template sealed_world.language_nep_constructor}
  /// Creates a instance of [LangNep] (Nepali language).
  ///
  /// ISO 639-2/T code: `NEP`, ISO 639-1 code: `NE`.
  /// {@endtemplate}
  const factory LangNep() = _NepFactory;

  const LangNep._()
    : super(
        name: "Nepali",
        code: "NEP",
        codeShort: "NE",
        namesNative: const ["नेपाली"],
        family: const IndoEuropean(),
        scripts: const {ScriptDeva()},
      );
}
