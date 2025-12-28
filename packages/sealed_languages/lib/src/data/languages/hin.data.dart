part of "../../model/language/submodels/natural_language.dart";

extension type const _HinFactory._(LangHin _) implements LangHin {
  const _HinFactory() : this._(const LangHin._());
}

/// A class that represents the Hindi language.
final class LangHin extends NaturalLanguage {
  /// {@template sealed_world.language_hin_constructor}
  /// Creates a instance of [LangHin] (Hindi language).
  ///
  /// ISO 639-2/T code: `HIN`, ISO 639-1 code: `HI`.
  /// {@endtemplate}
  const factory LangHin() = _HinFactory;

  const LangHin._()
    : super._(
        name: "Hindi",
        code: "HIN",
        codeShort: "HI",
        namesNative: const ["हिन्दी", "हिंदी"],
        family: const IndoEuropean(),
        scripts: const {ScriptDeva()},
      );
}
