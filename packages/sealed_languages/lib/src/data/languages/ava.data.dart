part of "../../model/language/language.dart";

extension type const _AvaFactory._(LangAva _) implements LangAva {
  const _AvaFactory() : this._(const LangAva._());
}

/// A class that represents the Avaric language.
class LangAva extends NaturalLanguage {
  /// {@template sealed_world.language_ava_constructor}
  /// Creates a instance of [LangAva] (Avaric language).
  ///
  /// ISO 639-2/T code: `AVA`, ISO 639-1 code: `AV`.
  /// {@endtemplate}
  const factory LangAva() = _AvaFactory;

  const LangAva._()
    : super(
        name: "Avaric",
        code: "AVA",
        codeShort: "AV",
        namesNative: const ["авар мацӀ", "магӀарул мацӀ"],
        family: const NortheastCaucasian(),
        scripts: const {ScriptCyrl()},
      );
}
