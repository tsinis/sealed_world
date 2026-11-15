part of "../../model/language/submodels/natural_language.dart";

extension type const _EllFactory._(LangEll _) implements LangEll {
  const new() : this._(const LangEll._());
}

/// A class that represents the Greek (modern) language.
final class LangEll extends NaturalLanguage {
  /// {@template sealed_world.language_ell_constructor}
  /// Creates a instance of [LangEll] (Greek (modern) language).
  ///
  /// ISO 639-2/T code: `ELL`, ISO 639-1 code: `EL`.
  /// {@endtemplate}
  const factory() = _EllFactory;

  const new _()
    : super._(
        name: "Greek (modern)",
        code: "ELL",
        codeShort: "EL",
        namesNative: const ["Ελληνικά"],
        bibliographicCode: "GRE",
        family: const IndoEuropean(),
        scripts: const {ScriptGrek()},
      );
}
