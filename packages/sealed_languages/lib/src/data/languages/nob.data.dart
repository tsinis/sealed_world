part of "../../model/language/submodels/natural_language.dart";

extension type const _NobFactory._(LangNob _) implements LangNob {
  const new() : this._(const LangNob._());
}

/// A class that represents the Norwegian Bokmål language.
final class LangNob extends NaturalLanguage {
  /// {@template sealed_world.language_nob_constructor}
  /// Creates a instance of [LangNob] (Norwegian Bokmål language).
  ///
  /// ISO 639-2/T code: `NOB`, ISO 639-1 code: `NB`.
  /// {@endtemplate}
  const factory() = _NobFactory;

  const new _()
    : super._(
        name: "Norwegian Bokmål",
        code: "NOB",
        codeShort: "NB",
        namesNative: const ["Norsk bokmål"],
        family: const IndoEuropean(),
      );
}
