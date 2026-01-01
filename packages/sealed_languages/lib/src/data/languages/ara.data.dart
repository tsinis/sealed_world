part of "../../model/language/submodels/natural_language.dart";

extension type const _AraFactory._(LangAra _) implements LangAra {
  const _AraFactory() : this._(const LangAra._());
}

/// A class that represents the Arabic language.
final class LangAra extends NaturalLanguage {
  /// {@template sealed_world.language_ara_constructor}
  /// Creates a instance of [LangAra] (Arabic language).
  ///
  /// ISO 639-2/T code: `ARA`, ISO 639-1 code: `AR`.
  /// {@endtemplate}
  const factory LangAra() = _AraFactory;

  const LangAra._()
    : super._(
        name: "Arabic",
        code: "ARA",
        codeShort: "AR",
        namesNative: const ["العربية"],
        family: const AfroAsiatic(),
        isRightToLeft: true,
        scripts: const {ScriptArab()},
      );
}
