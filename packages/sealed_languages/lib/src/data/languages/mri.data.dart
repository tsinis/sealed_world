part of "../../model/language/language.dart";

extension type const _MriFactory._(LangMri _) implements LangMri {
  const _MriFactory() : this._(const LangMri._());
}

/// A class that represents the Māori language.
class LangMri extends NaturalLanguage {
  /// {@template sealed_world.language_mri_constructor}
  /// Creates a instance of [LangMri] (Māori language).
  ///
  /// ISO 639-2/T code: `MRI`, ISO 639-1 code: `MI`.
  /// {@endtemplate}
  const factory LangMri() = _MriFactory;

  const LangMri._()
    : super(
        name: "Māori",
        code: "MRI",
        codeShort: "MI",
        namesNative: const ["te reo Māori"],
        bibliographicCode: "MAO",
        family: const Austronesian(),
      );
}
