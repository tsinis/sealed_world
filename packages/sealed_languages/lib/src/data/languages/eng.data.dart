part of "../../model/language/submodels/natural_language.dart";

extension type const _EngFactory._(LangEng _) implements LangEng {
  const _EngFactory() : this._(const LangEng._());
}

/// A class that represents the English language.
final class LangEng extends NaturalLanguage {
  /// {@template sealed_world.language_eng_constructor}
  /// Creates a instance of [LangEng] (English language).
  ///
  /// ISO 639-2/T code: `ENG`, ISO 639-1 code: `EN`.
  /// {@endtemplate}
  const factory LangEng() = _EngFactory;

  const LangEng._()
    : super._(
        name: "English",
        code: "ENG",
        codeShort: "EN",
        namesNative: const ["English"],
        family: const IndoEuropean(),
      );
}
