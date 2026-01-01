part of "../../model/language/submodels/natural_language.dart";

extension type const _WolFactory._(LangWol _) implements LangWol {
  const _WolFactory() : this._(const LangWol._());
}

/// A class that represents the Wolof language.
final class LangWol extends NaturalLanguage {
  /// {@template sealed_world.language_wol_constructor}
  /// Creates a instance of [LangWol] (Wolof language).
  ///
  /// ISO 639-2/T code: `WOL`, ISO 639-1 code: `WO`.
  /// {@endtemplate}
  const factory LangWol() = _WolFactory;

  const LangWol._()
    : super._(
        name: "Wolof",
        code: "WOL",
        codeShort: "WO",
        namesNative: const ["Wollof"],
        family: const NigerCongo(),
        scripts: const {ScriptLatn(), ScriptArab()},
      );
}
