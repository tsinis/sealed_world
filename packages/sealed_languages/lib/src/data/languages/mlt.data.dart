part of "../../model/language/language.dart";

extension type const _MltFactory._(LangMlt _) implements LangMlt {
  const _MltFactory() : this._(const LangMlt._());
}

/// A class that represents the Maltese language.
class LangMlt extends NaturalLanguage {
  /// {@template sealed_world.language_mlt_constructor}
  /// Creates a instance of [LangMlt] (Maltese language).
  ///
  /// ISO 639-2/T code: `MLT`, ISO 639-1 code: `MT`.
  /// {@endtemplate}
  const factory LangMlt() = _MltFactory;

  const LangMlt._()
    : super(
        name: "Maltese",
        code: "MLT",
        codeShort: "MT",
        namesNative: const ["Malti"],
        family: const AfroAsiatic(),
      );
}
