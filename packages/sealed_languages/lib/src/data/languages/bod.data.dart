part of "../../model/language/language.dart";

extension type const _BodFactory._(LangBod _) implements LangBod {
  const _BodFactory() : this._(const LangBod._());
}

/// A class that represents the Tibetan Standard language.
class LangBod extends NaturalLanguage {
  /// {@template sealed_world.language_bod_constructor}
  /// Creates a instance of [LangBod] (Tibetan Standard language).
  ///
  /// ISO 639-2/T code: `BOD`, ISO 639-1 code: `BO`.
  /// {@endtemplate}
  const factory LangBod() = _BodFactory;

  const LangBod._()
    : super(
        name: "Tibetan Standard",
        code: "BOD",
        codeShort: "BO",
        namesNative: const ["བོད་ཡིག"],
        bibliographicCode: "TIB",
        family: const SinoTibetan(),
        scripts: const {ScriptTibt()},
      );
}
