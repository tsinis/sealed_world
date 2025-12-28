part of "../../model/language/submodels/natural_language.dart";

extension type const _RusFactory._(LangRus _) implements LangRus {
  const _RusFactory() : this._(const LangRus._());
}

/// A class that represents the Russian language.
final class LangRus extends NaturalLanguage {
  /// {@template sealed_world.language_rus_constructor}
  /// Creates a instance of [LangRus] (Russian language).
  ///
  /// ISO 639-2/T code: `RUS`, ISO 639-1 code: `RU`.
  /// {@endtemplate}
  const factory LangRus() = _RusFactory;

  const LangRus._()
    : super._(
        name: "Russian",
        code: "RUS",
        codeShort: "RU",
        namesNative: const ["Русский"],
        family: const IndoEuropean(),
        scripts: const {ScriptCyrl()},
      );
}
