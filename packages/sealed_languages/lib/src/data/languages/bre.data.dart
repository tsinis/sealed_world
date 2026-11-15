part of "../../model/language/submodels/natural_language.dart";

extension type const _BreFactory._(LangBre _) implements LangBre {
  const new() : this._(const LangBre._());
}

/// A class that represents the Breton language.
final class LangBre extends NaturalLanguage {
  /// {@template sealed_world.language_bre_constructor}
  /// Creates a instance of [LangBre] (Breton language).
  ///
  /// ISO 639-2/T code: `BRE`, ISO 639-1 code: `BR`.
  /// {@endtemplate}
  const factory() = _BreFactory;

  const new _()
    : super._(
        name: "Breton",
        code: "BRE",
        codeShort: "BR",
        namesNative: const ["Brezhoneg"],
        family: const IndoEuropean(),
      );
}
