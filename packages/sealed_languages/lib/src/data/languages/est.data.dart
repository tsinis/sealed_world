part of "../../model/language/submodels/natural_language.dart";

extension type const _EstFactory._(LangEst _) implements LangEst {
  const _EstFactory() : this._(const LangEst._());
}

/// A class that represents the Estonian language.
final class LangEst extends NaturalLanguage {
  /// {@template sealed_world.language_est_constructor}
  /// Creates a instance of [LangEst] (Estonian language).
  ///
  /// ISO 639-2/T code: `EST`, ISO 639-1 code: `ET`.
  /// {@endtemplate}
  const factory LangEst() = _EstFactory;

  const LangEst._()
    : super._(
        name: "Estonian",
        code: "EST",
        codeShort: "ET",
        namesNative: const ["eesti", "eesti keel"],
        family: const Uralic(),
      );
}
