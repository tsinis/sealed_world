part of "../../model/language/submodels/natural_language.dart";

extension type const _KanFactory._(LangKan _) implements LangKan {
  const _KanFactory() : this._(const LangKan._());
}

/// A class that represents the Kannada language.
final class LangKan extends NaturalLanguage {
  /// {@template sealed_world.language_kan_constructor}
  /// Creates a instance of [LangKan] (Kannada language).
  ///
  /// ISO 639-2/T code: `KAN`, ISO 639-1 code: `KN`.
  /// {@endtemplate}
  const factory LangKan() = _KanFactory;

  const LangKan._()
    : super._(
        name: "Kannada",
        code: "KAN",
        codeShort: "KN",
        namesNative: const ["ಕನ್ನಡ"],
        family: const Dravidian(),
        scripts: const {ScriptKnda()},
      );
}
