part of "../../model/language/submodels/natural_language.dart";

extension type const _MsaFactory._(LangMsa _) implements LangMsa {
  const _MsaFactory() : this._(const LangMsa._());
}

/// A class that represents the Malay language.
final class LangMsa extends NaturalLanguage {
  /// {@template sealed_world.language_msa_constructor}
  /// Creates a instance of [LangMsa] (Malay language).
  ///
  /// ISO 639-2/T code: `MSA`, ISO 639-1 code: `MS`.
  /// {@endtemplate}
  const factory LangMsa() = _MsaFactory;

  const LangMsa._()
    : super._(
        name: "Malay",
        code: "MSA",
        codeShort: "MS",
        namesNative: const ["Bahasa Melayu", "بهاس ملايو‎"],
        bibliographicCode: "MAY",
        family: const Austronesian(),
        scripts: const {ScriptLatn(), ScriptArab()},
      );
}
