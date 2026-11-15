part of "../../model/language/submodels/natural_language.dart";

extension type const _NorFactory._(LangNor _) implements LangNor {
  const new() : this._(const LangNor._());
}

/// A class that represents the Norwegian language.
final class LangNor extends NaturalLanguage {
  /// {@template sealed_world.language_nor_constructor}
  /// Creates a instance of [LangNor] (Norwegian language).
  ///
  /// ISO 639-2/T code: `NOR`, ISO 639-1 code: `NO`.
  /// {@endtemplate}
  const factory() = _NorFactory;

  const new _()
    : super._(
        name: "Norwegian",
        code: "NOR",
        codeShort: "NO",
        namesNative: const ["Norsk"],
        family: const IndoEuropean(),
      );
}
