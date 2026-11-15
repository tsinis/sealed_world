part of "../../model/language/submodels/natural_language.dart";

extension type const _RonFactory._(LangRon _) implements LangRon {
  const new() : this._(const LangRon._());
}

/// A class that represents the Romanian language.
final class LangRon extends NaturalLanguage {
  /// {@template sealed_world.language_ron_constructor}
  /// Creates a instance of [LangRon] (Romanian language).
  ///
  /// ISO 639-2/T code: `RON`, ISO 639-1 code: `RO`.
  /// {@endtemplate}
  const factory() = _RonFactory;

  const new _()
    : super._(
        name: "Romanian",
        code: "RON",
        codeShort: "RO",
        namesNative: const ["Română"],
        bibliographicCode: "RUM",
        family: const IndoEuropean(),
      );
}
