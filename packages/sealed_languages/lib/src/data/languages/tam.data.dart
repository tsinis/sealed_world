part of "../../model/language/language.dart";

extension type const _TamFactory._(LangTam _) implements LangTam {
  const _TamFactory() : this._(const LangTam._());
}

/// A class that represents the Tamil language.
class LangTam extends NaturalLanguage {
  /// {@template sealed_world.language_tam_constructor}
  /// Creates a instance of [LangTam] (Tamil language).
  ///
  /// ISO 639-2/T code: `TAM`, ISO 639-1 code: `TA`.
  /// {@endtemplate}
  const factory LangTam() = _TamFactory;

  const LangTam._()
    : super(
        name: "Tamil",
        code: "TAM",
        codeShort: "TA",
        namesNative: const ["தமிழ்"],
        family: const Dravidian(),
        scripts: const {ScriptTaml()},
      );
}
