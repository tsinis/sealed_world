part of "../../model/language/submodels/natural_language.dart";

extension type const _HunFactory._(LangHun _) implements LangHun {
  const _HunFactory() : this._(const LangHun._());
}

/// A class that represents the Hungarian language.
final class LangHun extends NaturalLanguage {
  /// {@template sealed_world.language_hun_constructor}
  /// Creates a instance of [LangHun] (Hungarian language).
  ///
  /// ISO 639-2/T code: `HUN`, ISO 639-1 code: `HU`.
  /// {@endtemplate}
  const factory LangHun() = _HunFactory;

  const LangHun._()
    : super._(
        name: "Hungarian",
        code: "HUN",
        codeShort: "HU",
        namesNative: const ["Magyar"],
        family: const Uralic(),
      );
}
