part of "../../model/language/language.dart";

extension type const _DzoFactory._(LangDzo _) implements LangDzo {
  const _DzoFactory() : this._(const LangDzo._());
}

/// A class that represents the Dzongkha language.
class LangDzo extends NaturalLanguage {
  /// {@template sealed_world.language_dzo_constructor}
  /// Creates a instance of [LangDzo] (Dzongkha language).
  ///
  /// ISO 639-2/T code: `DZO`, ISO 639-1 code: `DZ`.
  /// {@endtemplate}
  const factory LangDzo() = _DzoFactory;

  const LangDzo._()
    : super(
        name: "Dzongkha",
        code: "DZO",
        codeShort: "DZ",
        namesNative: const ["རྫོང་ཁ"],
        family: const SinoTibetan(),
        scripts: const {ScriptTibt()},
      );
}
