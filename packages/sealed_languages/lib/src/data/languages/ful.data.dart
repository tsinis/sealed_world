part of "../../model/language/submodels/natural_language.dart";

extension type const _FulFactory._(LangFul _) implements LangFul {
  const _FulFactory() : this._(const LangFul._());
}

/// A class that represents the Fula (Fulah/Pulaar/Pular) language.
final class LangFul extends NaturalLanguage {
  /// {@template sealed_world.language_ful_constructor}
  /// Creates a instance of [LangFul] (Fula (Fulah/Pulaar/Pular) language).
  ///
  /// ISO 639-2/T code: `FUL`, ISO 639-1 code: `FF`.
  /// {@endtemplate}
  const factory LangFul() = _FulFactory;

  const LangFul._()
    : super._(
        name: "Fula (Fulah/Pulaar/Pular)",
        code: "FUL",
        codeShort: "FF",
        namesNative: const ["Fulfulde", "Pulaar", "Pular"],
        family: const NigerCongo(),
        scripts: const {ScriptLatn(), ScriptAdlm(), ScriptArab()},
      );
}
