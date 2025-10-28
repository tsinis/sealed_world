part of "../../model/language/language.dart";

extension type const _SpaFactory._(LangSpa _) implements LangSpa {
  const _SpaFactory() : this._(const LangSpa._());
}

/// A class that represents the Spanish language.
class LangSpa extends NaturalLanguage {
  /// {@template sealed_world.language_spa_constructor}
  /// Creates a instance of [LangSpa] (Spanish language).
  ///
  /// ISO 639-2/T code: `SPA`, ISO 639-1 code: `ES`.
  /// {@endtemplate}
  const factory LangSpa() = _SpaFactory;

  const LangSpa._()
    : super(
        name: "Spanish",
        code: "SPA",
        codeShort: "ES",
        namesNative: const ["Español"],
        family: const IndoEuropean(),
      );
}
