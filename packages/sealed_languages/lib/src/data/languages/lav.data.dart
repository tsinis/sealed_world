part of "../../model/language/language.dart";

extension type const _LavFactory._(LangLav _) implements LangLav {
  const _LavFactory() : this._(const LangLav._());
}

/// A class that represents the Latvian language.
class LangLav extends NaturalLanguage {
  /// {@template sealed_world.language_lav_constructor}
  /// Creates a instance of [LangLav] (Latvian language).
  ///
  /// ISO 639-2/T code: `LAV`, ISO 639-1 code: `LV`.
  /// {@endtemplate}
  const factory LangLav() = _LavFactory;

  const LangLav._()
    : super(
        name: "Latvian",
        code: "LAV",
        codeShort: "LV",
        namesNative: const ["latviešu valoda"],
        family: const IndoEuropean(),
      );
}
