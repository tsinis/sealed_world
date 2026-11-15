part of "../../model/language/submodels/natural_language.dart";

extension type const _KirFactory._(LangKir _) implements LangKir {
  const new() : this._(const LangKir._());
}

/// A class that represents the Kyrgyz language.
final class LangKir extends NaturalLanguage {
  /// {@template sealed_world.language_kir_constructor}
  /// Creates a instance of [LangKir] (Kyrgyz language).
  ///
  /// ISO 639-2/T code: `KIR`, ISO 639-1 code: `KY`.
  /// {@endtemplate}
  const factory() = _KirFactory;

  const new _()
    : super._(
        name: "Kyrgyz",
        code: "KIR",
        codeShort: "KY",
        namesNative: const ["Кыргызча", "Кыргыз тили"],
        family: const Turkic(),
        scripts: const {ScriptCyrl(), ScriptArab()},
      );
}
