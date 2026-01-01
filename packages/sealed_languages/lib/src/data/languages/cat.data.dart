part of "../../model/language/submodels/natural_language.dart";

extension type const _CatFactory._(LangCat _) implements LangCat {
  const _CatFactory() : this._(const LangCat._());
}

/// A class that represents the Catalan language.
final class LangCat extends NaturalLanguage {
  /// {@template sealed_world.language_cat_constructor}
  /// Creates a instance of [LangCat] (Catalan language).
  ///
  /// ISO 639-2/T code: `CAT`, ISO 639-1 code: `CA`.
  /// {@endtemplate}
  const factory LangCat() = _CatFactory;

  const LangCat._()
    : super._(
        name: "Catalan",
        code: "CAT",
        codeShort: "CA",
        namesNative: const ["català"],
        family: const IndoEuropean(),
      );
}
