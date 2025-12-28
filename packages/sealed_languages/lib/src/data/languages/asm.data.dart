part of "../../model/language/submodels/natural_language.dart";

extension type const _AsmFactory._(LangAsm _) implements LangAsm {
  const _AsmFactory() : this._(const LangAsm._());
}

/// A class that represents the Assamese language.
final class LangAsm extends NaturalLanguage {
  /// {@template sealed_world.language_asm_constructor}
  /// Creates a instance of [LangAsm] (Assamese language).
  ///
  /// ISO 639-2/T code: `ASM`, ISO 639-1 code: `AS`.
  /// {@endtemplate}
  const factory LangAsm() = _AsmFactory;

  const LangAsm._()
    : super._(
        name: "Assamese",
        code: "ASM",
        codeShort: "AS",
        namesNative: const ["অসমীয়া"],
        family: const IndoEuropean(),
        scripts: const {ScriptBeng()},
      );
}
