part of "../../model/language/language.dart";

extension type const _MlgFactory._(LangMlg _) implements LangMlg {
  const _MlgFactory() : this._(const LangMlg._());
}

/// A class that represents the Malagasy language.
class LangMlg extends NaturalLanguage {
  /// {@template sealed_world.language_mlg_constructor}
  /// Creates a instance of [LangMlg] (Malagasy language).
  ///
  /// ISO 639-2/T code: `MLG`, ISO 639-1 code: `MG`.
  /// {@endtemplate}
  const factory LangMlg() = _MlgFactory;

  const LangMlg._()
    : super(
        name: "Malagasy",
        code: "MLG",
        codeShort: "MG",
        namesNative: const ["fiteny malagasy"],
        family: const Austronesian(),
      );
}
