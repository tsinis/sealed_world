part of "../../model/language/submodels/natural_language.dart";

extension type const _LavFactory._(LangLav _) implements LangLav {
  const new() : this._(const LangLav._());
}

/// A class that represents the Latvian language.
final class LangLav extends NaturalLanguage {
  /// {@template sealed_world.language_lav_constructor}
  /// Creates a instance of [LangLav] (Latvian language).
  ///
  /// ISO 639-2/T code: `LAV`, ISO 639-1 code: `LV`.
  /// {@endtemplate}
  const factory() = _LavFactory;

  const new _()
    : super._(
        name: "Latvian",
        code: "LAV",
        codeShort: "LV",
        namesNative: const ["Latviešu valoda"],
        family: const IndoEuropean(),
      );
}
