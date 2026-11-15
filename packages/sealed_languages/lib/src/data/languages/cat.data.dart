part of "../../model/language/submodels/natural_language.dart";

extension type const _CatFactory._(LangCat _) implements LangCat {
  const new() : this._(const LangCat._());
}

/// A class that represents the Catalan language.
final class LangCat extends NaturalLanguage {
  /// {@template sealed_world.language_cat_constructor}
  /// Creates a instance of [LangCat] (Catalan language).
  ///
  /// ISO 639-2/T code: `CAT`, ISO 639-1 code: `CA`.
  /// {@endtemplate}
  const factory() = _CatFactory;

  const new _()
    : super._(
        name: "Catalan",
        code: "CAT",
        codeShort: "CA",
        namesNative: const ["Català"],
        family: const IndoEuropean(),
      );
}
