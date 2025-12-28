part of "../../model/language/submodels/natural_language.dart";

extension type const _KatFactory._(LangKat _) implements LangKat {
  const _KatFactory() : this._(const LangKat._());
}

/// A class that represents the Georgian language.
final class LangKat extends NaturalLanguage {
  /// {@template sealed_world.language_kat_constructor}
  /// Creates a instance of [LangKat] (Georgian language).
  ///
  /// ISO 639-2/T code: `KAT`, ISO 639-1 code: `KA`.
  /// {@endtemplate}
  const factory LangKat() = _KatFactory;

  const LangKat._()
    : super._(
        name: "Georgian",
        code: "KAT",
        codeShort: "KA",
        namesNative: const ["ქართული"],
        bibliographicCode: "GEO",
        family: const SouthCaucasian(),
        scripts: const {ScriptGeor()},
      );
}
