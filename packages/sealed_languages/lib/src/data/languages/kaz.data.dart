part of "../../model/language/language.dart";

extension type const _KazFactory._(LangKaz _) implements LangKaz {
  const _KazFactory() : this._(const LangKaz._());
}

/// A class that represents the Kazakh language.
class LangKaz extends NaturalLanguage {
  /// {@template sealed_world.language_kaz_constructor}
  /// Creates a instance of [LangKaz] (Kazakh language).
  ///
  /// ISO 639-2/T code: `KAZ`, ISO 639-1 code: `KK`.
  /// {@endtemplate}
  const factory LangKaz() = _KazFactory;

  const LangKaz._()
    : super(
        name: "Kazakh",
        code: "KAZ",
        codeShort: "KK",
        namesNative: const ["қазақ тілі"],
        family: const Turkic(),
        scripts: const {ScriptCyrl(), ScriptLatn(), ScriptArab()},
      );
}
