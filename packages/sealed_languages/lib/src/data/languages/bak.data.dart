part of "../../model/language/language.dart";

extension type const _BakFactory._(LangBak _) implements LangBak {
  const _BakFactory() : this._(const LangBak._());
}

/// A class that represents the Bashkir language.
class LangBak extends NaturalLanguage {
  /// {@template sealed_world.language_bak_constructor}
  /// Creates a instance of [LangBak] (Bashkir language).
  ///
  /// ISO 639-2/T code: `BAK`, ISO 639-1 code: `BA`.
  /// {@endtemplate}
  const factory LangBak() = _BakFactory;

  const LangBak._()
    : super(
        name: "Bashkir",
        code: "BAK",
        codeShort: "BA",
        namesNative: const ["башҡорт теле"],
        family: const Turkic(),
        scripts: const {ScriptCyrl()},
      );
}
