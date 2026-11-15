part of "../../model/language/submodels/natural_language.dart";

extension type const _BakFactory._(LangBak _) implements LangBak {
  const new() : this._(const LangBak._());
}

/// A class that represents the Bashkir language.
final class LangBak extends NaturalLanguage {
  /// {@template sealed_world.language_bak_constructor}
  /// Creates a instance of [LangBak] (Bashkir language).
  ///
  /// ISO 639-2/T code: `BAK`, ISO 639-1 code: `BA`.
  /// {@endtemplate}
  const factory() = _BakFactory;

  const new _()
    : super._(
        name: "Bashkir",
        code: "BAK",
        codeShort: "BA",
        namesNative: const ["Башҡорт теле"],
        family: const Turkic(),
        scripts: const {ScriptCyrl()},
      );
}
