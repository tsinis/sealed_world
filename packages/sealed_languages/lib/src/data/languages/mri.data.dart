part of "../../model/language/submodels/natural_language.dart";

extension type const _MriFactory._(LangMri _) implements LangMri {
  const new() : this._(const LangMri._());
}

/// A class that represents the Māori language.
final class LangMri extends NaturalLanguage {
  /// {@template sealed_world.language_mri_constructor}
  /// Creates a instance of [LangMri] (Māori language).
  ///
  /// ISO 639-2/T code: `MRI`, ISO 639-1 code: `MI`.
  /// {@endtemplate}
  const factory() = _MriFactory;

  const new _()
    : super._(
        name: "Māori",
        code: "MRI",
        codeShort: "MI",
        namesNative: const ["Te reo Māori"],
        bibliographicCode: "MAO",
        family: const Austronesian(),
      );
}
