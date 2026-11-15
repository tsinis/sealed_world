part of "../../model/language/submodels/natural_language.dart";

extension type const _MltFactory._(LangMlt _) implements LangMlt {
  const new() : this._(const LangMlt._());
}

/// A class that represents the Maltese language.
final class LangMlt extends NaturalLanguage {
  /// {@template sealed_world.language_mlt_constructor}
  /// Creates a instance of [LangMlt] (Maltese language).
  ///
  /// ISO 639-2/T code: `MLT`, ISO 639-1 code: `MT`.
  /// {@endtemplate}
  const factory() = _MltFactory;

  const new _()
    : super._(
        name: "Maltese",
        code: "MLT",
        codeShort: "MT",
        namesNative: const ["Malti"],
        family: const AfroAsiatic(),
      );
}
