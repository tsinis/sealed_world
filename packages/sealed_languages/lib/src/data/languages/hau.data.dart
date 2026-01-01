part of "../../model/language/submodels/natural_language.dart";

extension type const _HauFactory._(LangHau _) implements LangHau {
  const _HauFactory() : this._(const LangHau._());
}

/// A class that represents the Hausa language.
final class LangHau extends NaturalLanguage {
  /// {@template sealed_world.language_hau_constructor}
  /// Creates a instance of [LangHau] (Hausa language).
  ///
  /// ISO 639-2/T code: `HAU`, ISO 639-1 code: `HA`.
  /// {@endtemplate}
  const factory LangHau() = _HauFactory;

  const LangHau._()
    : super._(
        name: "Hausa",
        code: "HAU",
        codeShort: "HA",
        namesNative: const ["Hausa", "هَوُسَ"],
        family: const AfroAsiatic(),
        scripts: const {ScriptLatn(), ScriptArab()},
      );
}
