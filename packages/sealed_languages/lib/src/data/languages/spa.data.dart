part of "../../model/language/submodels/natural_language.dart";

extension type const _SpaFactory._(LangSpa _) implements LangSpa {
  const new() : this._(const LangSpa._());
}

/// A class that represents the Spanish language.
final class LangSpa extends NaturalLanguage {
  /// {@template sealed_world.language_spa_constructor}
  /// Creates a instance of [LangSpa] (Spanish language).
  ///
  /// ISO 639-2/T code: `SPA`, ISO 639-1 code: `ES`.
  /// {@endtemplate}
  const factory() = _SpaFactory;

  const new _()
    : super._(
        name: "Spanish",
        code: "SPA",
        codeShort: "ES",
        namesNative: const ["Español"],
        family: const IndoEuropean(),
      );
}
