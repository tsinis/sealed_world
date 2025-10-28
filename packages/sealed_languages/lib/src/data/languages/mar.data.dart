part of "../../model/language/language.dart";

extension type const _MarFactory._(LangMar _) implements LangMar {
  const _MarFactory() : this._(const LangMar._());
}

/// A class that represents the Marathi (Marāṭhī) language.
class LangMar extends NaturalLanguage {
  /// {@template sealed_world.language_mar_constructor}
  /// Creates a instance of [LangMar] (Marathi (Marāṭhī) language).
  ///
  /// ISO 639-2/T code: `MAR`, ISO 639-1 code: `MR`.
  /// {@endtemplate}
  const factory LangMar() = _MarFactory;

  const LangMar._()
    : super(
        name: "Marathi (Marāṭhī)",
        code: "MAR",
        codeShort: "MR",
        namesNative: const ["मराठी"],
        family: const IndoEuropean(),
        scripts: const {ScriptDeva()},
      );
}
