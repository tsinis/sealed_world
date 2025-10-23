part of "../../model/language/language.dart";

extension type const _AbkFactory._(LangAbk _) implements LangAbk {
  const _AbkFactory() : this._(const LangAbk._());
}

/// A class that represents the Abkhaz language.
class LangAbk extends NaturalLanguage {
  /// {@template sealed_world.language_abk_constructor}
  /// Creates a instance of [LangAbk] (Abkhaz language).
  ///
  /// ISO 639-2/T code: `ABK`, ISO 639-1 code: `AB`.
  /// {@endtemplate}
  const factory LangAbk() = _AbkFactory;

  const LangAbk._()
    : super(
        name: "Abkhaz",
        code: "ABK",
        codeShort: "AB",
        namesNative: const ["аҧсуа бызшәа", "аҧсшәа"],
        family: const NorthwestCaucasian(),
        scripts: const {ScriptCyrl()},
      );
}
