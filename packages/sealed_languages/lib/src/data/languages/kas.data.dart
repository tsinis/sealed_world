part of "../../model/language/submodels/natural_language.dart";

extension type const _KasFactory._(LangKas _) implements LangKas {
  const _KasFactory() : this._(const LangKas._());
}

/// A class that represents the Kashmiri language.
final class LangKas extends NaturalLanguage {
  /// {@template sealed_world.language_kas_constructor}
  /// Creates a instance of [LangKas] (Kashmiri language).
  ///
  /// ISO 639-2/T code: `KAS`, ISO 639-1 code: `KS`.
  /// {@endtemplate}
  const factory LangKas() = _KasFactory;

  const LangKas._()
    : super._(
        name: "Kashmiri",
        code: "KAS",
        codeShort: "KS",
        namesNative: const ["कश्मीरी", "كشميري‎"],
        family: const IndoEuropean(),
        isRightToLeft: true,
        scripts: const {ScriptArab(), ScriptDeva()},
      );
}
