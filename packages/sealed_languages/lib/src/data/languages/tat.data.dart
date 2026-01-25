part of "../../model/language/submodels/natural_language.dart";

extension type const _TatFactory._(LangTat _) implements LangTat {
  const _TatFactory() : this._(const LangTat._());
}

/// A class that represents the Tatar language.
final class LangTat extends NaturalLanguage {
  /// {@template sealed_world.language_tat_constructor}
  /// Creates a instance of [LangTat] (Tatar language).
  ///
  /// ISO 639-2/T code: `TAT`, ISO 639-1 code: `TT`.
  /// {@endtemplate}
  const factory LangTat() = _TatFactory;

  const LangTat._()
    : super._(
        name: "Tatar",
        code: "TAT",
        codeShort: "TT",
        namesNative: const ["Татар теле", "Tatar tele"],
        family: const Turkic(),
        scripts: const {ScriptCyrl(), ScriptLatn(), ScriptArab()},
      );
}
