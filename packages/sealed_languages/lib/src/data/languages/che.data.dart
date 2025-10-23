part of "../../model/language/language.dart";

extension type const _CheFactory._(LangChe _) implements LangChe {
  const _CheFactory() : this._(const LangChe._());
}

/// A class that represents the Chechen language.
class LangChe extends NaturalLanguage {
  /// {@template sealed_world.language_che_constructor}
  /// Creates a instance of [LangChe] (Chechen language).
  ///
  /// ISO 639-2/T code: `CHE`, ISO 639-1 code: `CE`.
  /// {@endtemplate}
  const factory LangChe() = _CheFactory;

  const LangChe._()
    : super(
        name: "Chechen",
        code: "CHE",
        codeShort: "CE",
        namesNative: const ["нохчийн мотт"],
        family: const NortheastCaucasian(),
        scripts: const {ScriptCyrl()},
      );
}
