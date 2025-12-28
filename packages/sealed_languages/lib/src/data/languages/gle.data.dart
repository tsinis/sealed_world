part of "../../model/language/submodels/natural_language.dart";

extension type const _GleFactory._(LangGle _) implements LangGle {
  const _GleFactory() : this._(const LangGle._());
}

/// A class that represents the Irish language.
final class LangGle extends NaturalLanguage {
  /// {@template sealed_world.language_gle_constructor}
  /// Creates a instance of [LangGle] (Irish language).
  ///
  /// ISO 639-2/T code: `GLE`, ISO 639-1 code: `GA`.
  /// {@endtemplate}
  const factory LangGle() = _GleFactory;

  const LangGle._()
    : super._(
        name: "Irish",
        code: "GLE",
        codeShort: "GA",
        namesNative: const ["Gaeilge"],
        family: const IndoEuropean(),
      );
}
