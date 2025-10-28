part of "../../model/language/language.dart";

extension type const _BreFactory._(LangBre _) implements LangBre {
  const _BreFactory() : this._(const LangBre._());
}

/// A class that represents the Breton language.
class LangBre extends NaturalLanguage {
  /// {@template sealed_world.language_bre_constructor}
  /// Creates a instance of [LangBre] (Breton language).
  ///
  /// ISO 639-2/T code: `BRE`, ISO 639-1 code: `BR`.
  /// {@endtemplate}
  const factory LangBre() = _BreFactory;

  const LangBre._()
    : super(
        name: "Breton",
        code: "BRE",
        codeShort: "BR",
        namesNative: const ["brezhoneg"],
        family: const IndoEuropean(),
      );
}
