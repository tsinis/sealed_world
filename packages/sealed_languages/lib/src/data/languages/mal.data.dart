part of "../../model/language/language.dart";

extension type const _MalFactory._(LangMal _) implements LangMal {
  const _MalFactory() : this._(const LangMal._());
}

/// A class that represents the Malayalam language.
class LangMal extends NaturalLanguage {
  /// {@template sealed_world.language_mal_constructor}
  /// Creates a instance of [LangMal] (Malayalam language).
  ///
  /// ISO 639-2/T code: `MAL`, ISO 639-1 code: `ML`.
  /// {@endtemplate}
  const factory LangMal() = _MalFactory;

  const LangMal._()
    : super(
        name: "Malayalam",
        code: "MAL",
        codeShort: "ML",
        namesNative: const ["മലയാളം"],
        family: const Dravidian(),
        scripts: const {ScriptMlym()},
      );
}
