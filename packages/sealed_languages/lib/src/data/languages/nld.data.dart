part of "../../model/language/submodels/natural_language.dart";

extension type const _NldFactory._(LangNld _) implements LangNld {
  const _NldFactory() : this._(const LangNld._());
}

/// A class that represents the Dutch language.
final class LangNld extends NaturalLanguage {
  /// {@template sealed_world.language_nld_constructor}
  /// Creates a instance of [LangNld] (Dutch language).
  ///
  /// ISO 639-2/T code: `NLD`, ISO 639-1 code: `NL`.
  /// {@endtemplate}
  const factory LangNld() = _NldFactory;

  const LangNld._()
    : super._(
        name: "Dutch",
        code: "NLD",
        codeShort: "NL",
        namesNative: const ["Nederlands", "Vlaams"],
        bibliographicCode: "DUT",
        family: const IndoEuropean(),
      );
}
