part of "../../model/language/submodels/natural_language.dart";

extension type const _AmhFactory._(LangAmh _) implements LangAmh {
  const _AmhFactory() : this._(const LangAmh._());
}

/// A class that represents the Amharic language.
final class LangAmh extends NaturalLanguage {
  /// {@template sealed_world.language_amh_constructor}
  /// Creates a instance of [LangAmh] (Amharic language).
  ///
  /// ISO 639-2/T code: `AMH`, ISO 639-1 code: `AM`.
  /// {@endtemplate}
  const factory LangAmh() = _AmhFactory;

  const LangAmh._()
    : super._(
        name: "Amharic",
        code: "AMH",
        codeShort: "AM",
        namesNative: const ["አማርኛ"],
        family: const AfroAsiatic(),
        scripts: const {ScriptEthi()},
      );
}
