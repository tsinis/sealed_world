part of "../../model/language/language.dart";

extension type const _NorFactory._(LangNor _) implements LangNor {
  const _NorFactory() : this._(const LangNor._());
}

/// A class that represents the Norwegian language.
class LangNor extends NaturalLanguage {
  /// {@template sealed_world.language_nor_constructor}
  /// Creates a instance of [LangNor] (Norwegian language).
  ///
  /// ISO 639-2/T code: `NOR`, ISO 639-1 code: `NO`.
  /// {@endtemplate}
  const factory LangNor() = _NorFactory;

  const LangNor._()
    : super(
        name: "Norwegian",
        code: "NOR",
        codeShort: "NO",
        namesNative: const ["Norsk"],
        family: const IndoEuropean(),
      );
}
