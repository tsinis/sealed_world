part of "../../model/language/language.dart";

extension type const _RohFactory._(LangRoh _) implements LangRoh {
  const _RohFactory() : this._(const LangRoh._());
}

/// A class that represents the Romansh language.
class LangRoh extends NaturalLanguage {
  /// {@template sealed_world.language_roh_constructor}
  /// Creates a instance of [LangRoh] (Romansh language).
  ///
  /// ISO 639-2/T code: `ROH`, ISO 639-1 code: `RM`.
  /// {@endtemplate}
  const factory LangRoh() = _RohFactory;

  const LangRoh._()
    : super(
        name: "Romansh",
        code: "ROH",
        codeShort: "RM",
        namesNative: const ["rumantsch grischun"],
        family: const IndoEuropean(),
      );
}
