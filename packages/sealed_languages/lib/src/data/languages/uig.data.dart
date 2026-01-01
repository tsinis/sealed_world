part of "../../model/language/submodels/natural_language.dart";

extension type const _UigFactory._(LangUig _) implements LangUig {
  const _UigFactory() : this._(const LangUig._());
}

/// A class that represents the Uyghur language.
final class LangUig extends NaturalLanguage {
  /// {@template sealed_world.language_uig_constructor}
  /// Creates a instance of [LangUig] (Uyghur language).
  ///
  /// ISO 639-2/T code: `UIG`, ISO 639-1 code: `UG`.
  /// {@endtemplate}
  const factory LangUig() = _UigFactory;

  const LangUig._()
    : super._(
        name: "Uyghur",
        code: "UIG",
        codeShort: "UG",
        namesNative: const ["ئۇيغۇرچە‎", "Uyghurche"],
        family: const Turkic(),
        scripts: const {ScriptArab(), ScriptLatn(), ScriptCyrl()},
      );
}
