part of "../../model/language/language.dart";

extension type const _EllFactory._(LangEll _) implements LangEll {
  const _EllFactory() : this._(const LangEll._());
}

/// A class that represents the Greek (modern) language.
class LangEll extends NaturalLanguage {
  /// {@template sealed_world.language_ell_constructor}
  /// Creates a instance of [LangEll] (Greek (modern) language).
  ///
  /// ISO 639-2/T code: `ELL`, ISO 639-1 code: `EL`.
  /// {@endtemplate}
  const factory LangEll() = _EllFactory;

  const LangEll._()
    : super(
        name: "Greek (modern)",
        code: "ELL",
        codeShort: "EL",
        namesNative: const ["ελληνικά"],
        bibliographicCode: "GRE",
        family: const IndoEuropean(),
        scripts: const {ScriptGrek()},
      );
}
