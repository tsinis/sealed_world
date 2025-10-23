part of "../../model/language/language.dart";

extension type const _HunFactory._(LangHun _) implements LangHun {
  const _HunFactory() : this._(const LangHun._());
}

/// A class that represents the Hungarian language.
class LangHun extends NaturalLanguage {
  /// {@template sealed_world.language_hun_constructor}
  /// Creates a instance of [LangHun] (Hungarian language).
  ///
  /// ISO 639-2/T code: `HUN`, ISO 639-1 code: `HU`.
  /// {@endtemplate}
  const factory LangHun() = _HunFactory;

  const LangHun._()
    : super(
        name: "Hungarian",
        code: "HUN",
        codeShort: "HU",
        namesNative: const ["magyar"],
        family: const Uralic(),
      );
}
